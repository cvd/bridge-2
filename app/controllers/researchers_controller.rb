class ReseearchersController < ApplicationController
  # GET /reseearchers
  # GET /reseearchers.json
  def index
    @reseearchers = Reseearcher.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reseearchers }
    end
  end

  # GET /reseearchers/1
  # GET /reseearchers/1.json
  def show
    @reseearcher = Reseearcher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reseearcher }
    end
  end

  # GET /reseearchers/new
  # GET /reseearchers/new.json
  def new
    @reseearcher = Reseearcher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reseearcher }
    end
  end

  # GET /reseearchers/1/edit
  def edit
    @reseearcher = Reseearcher.find(params[:id])
  end

  # POST /reseearchers
  # POST /reseearchers.json
  def create
    @reseearcher = Reseearcher.new(params[:reseearcher])

    respond_to do |format|
      if @reseearcher.save
        format.html { redirect_to @reseearcher, notice: 'Reseearcher was successfully created.' }
        format.json { render json: @reseearcher, status: :created, location: @reseearcher }
      else
        format.html { render action: "new" }
        format.json { render json: @reseearcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reseearchers/1
  # PUT /reseearchers/1.json
  def update
    @reseearcher = Reseearcher.find(params[:id])

    respond_to do |format|
      if @reseearcher.update_attributes(params[:reseearcher])
        format.html { redirect_to @reseearcher, notice: 'Reseearcher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reseearcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reseearchers/1
  # DELETE /reseearchers/1.json
  def destroy
    @reseearcher = Reseearcher.find(params[:id])
    @reseearcher.destroy

    respond_to do |format|
      format.html { redirect_to reseearchers_url }
      format.json { head :no_content }
    end
  end
end
