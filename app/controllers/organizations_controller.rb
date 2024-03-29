class OrganizationsController < ApplicationController

  # GET /organizations
  # GET /organizations.json
  def index
    @organizations = Organization.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @organizations }
    end
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
    @organization = Organization.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @organization }
    end
  end

  # GET /organizations/new
  # GET /organizations/new.json
  def new
    @organization = Organization.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @organization }
    end
  end

  # GET /organizations/1/edit
  def edit
    @organization = Organization.find(params[:id])
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(params[:organization])

    respond_to do |format|
      if @organization.save
        format.html { redirect_to @organization, notice: 'Organization was successfully created.' }
        format.json { render json: @organization, status: :created, location: @organization }
      else
        format.html { render action: "new" }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /organizations/1
  # PUT /organizations/1.json
  def update
    @organization = Organization.find(params[:id])

    respond_to do |format|
      if @organization.update_attributes(params[:organization])
        format.html { redirect_to @organization, notice: 'Organization was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy

    respond_to do |format|
      format.html { redirect_to organizations_url }
      format.json { head :ok }
    end
  end

  def map
    @organizations = Organization.all
    render "map", :layout => "fluid"
  end

  def search
    @organizations = Organization.search do
      fulltext params[:q]
    end.results

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @organizations, :includes => [:tags] }
    end

  end

  def follow
    if current_user.present?
      @organization = Organization.find(params[:id])
      success = current_user.follow(@organization)
      respond_to do |format|
        format.html { redirect_to :organization, notice: "Awesome, You followed #{@organization}" }
        format.json { render json: {success: success} }
      end
    else
      respond_to do |format|
        format.html { redirect_to :organization, notice: "Please <a href='#{new_user_session_path}'>Log in</a> follow".html_safe }
        format.json { render json: {success: false} }
      end

    end

  end

end
