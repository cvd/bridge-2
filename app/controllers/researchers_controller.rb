class ResearchersController < ApplicationController
  # GET /researchers
  # GET /researchers.json
  def index
    @researchers = organization.researchers.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @researchers }
    end
  end

  # GET /researchers/1
  # GET /researchers/1.json
  def show
    @researcher = organization.researchers.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @researcher }
    end
  end

  # GET /researchers/new
  # GET /researchers/new.json
  def new
    @researcher = organization.researchers.build(params[:researcher])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @researcher }
    end
  end

  # GET /researchers/1/edit
  def edit
    @researcher = Researcher.find(params[:id])
  end

  # POST /researchers
  # POST /researchers.json
  def create
    @researcher = organization.researchers.build(params[:researcher])

    respond_to do |format|
      if @researcher.save
        format.html { redirect_to [organization, @researcher], notice: 'researcher was successfully created.' }
        format.json { render json: @researcher, status: :created, location: @researcher }
      else
        format.html { render action: "new" }
        format.json { render json: @researcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /researchers/1
  # PUT /researchers/1.json
  def update
    @researcher = organization.researchers.find(params[:id])

    respond_to do |format|
      if @researcher.update_attributes(params[:researcher])
        format.html { redirect_to @researcher, notice: 'researcher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @researcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /researchers/1
  # DELETE /researchers/1.json
  def destroy
    @researcher = organization.researchers.find(params[:id])
    @researcher.destroy

    respond_to do |format|
      format.html { redirect_to researchers_url }
      format.json { head :no_content }
    end
  end

  protected
  def organization
    @organization ||= Organization.find(params[:organization_id])
  end

  helper_method :organization
end
