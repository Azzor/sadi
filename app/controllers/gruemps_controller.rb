class GruempsController < ApplicationController
  # GET /gruemps
  # GET /gruemps.json
  layout 'admin'

  def index
    @gruemps = Gruemp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gruemps }
    end
  end

  # GET /gruemps/1
  # GET /gruemps/1.json
  def show
    @gruemp = Gruemp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gruemp }
    end
  end

  # GET /gruemps/new
  # GET /gruemps/new.json
  def new
    @gruemp = Gruemp.new

    respond_to do |format|
      #@agruemps_id =

      format.html # new.html.erb
      format.json { render json: @gruemp }
    end
  end

  # GET /gruemps/1/edit
  def edit
    @gruemp = Gruemp.find(params[:id])
  end

  # POST /gruemps
  # POST /gruemps.json
  def create
    @gruemp = Gruemp.new(params[:gruemp])

    respond_to do |format|
      if @gruemp.save
        format.html { redirect_to @gruemp, notice: 'Gruemp was successfully created.' }
        format.json { render json: @gruemp, status: :created, location: @gruemp }
      else
        format.html { render action: "new" }
        format.json { render json: @gruemp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gruemps/1
  # PUT /gruemps/1.json
  def update
    @gruemp = Gruemp.find(params[:id])

    respond_to do |format|
      if @gruemp.update_attributes(params[:gruemp])
        format.html { redirect_to @gruemp, notice: 'Gruemp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gruemp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gruemps/1
  # DELETE /gruemps/1.json
  def destroy
    @gruemp = Gruemp.find(params[:id])
    @gruemp.destroy

    respond_to do |format|
      format.html { redirect_to gruemps_url }
      format.json { head :no_content }
    end
  end
end
