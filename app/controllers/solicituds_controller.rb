class SolicitudsController < ApplicationController
  layout 'admin'

  # GET /solicituds
  # GET /solicituds.json
  def index
    @solicituds = Solicitud.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @solicituds }
    end
  end

  # GET /solicituds/1
  # GET /solicituds/1.json
  def show
    @solicitud = Solicitud.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @solicitud }
    end
  end

  # GET /solicituds/new
  # GET /solicituds/new.json
  def new
    @solicitud = Solicitud.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @solicitud }
    end
  end

  # GET /solicituds/1/edit
  def edit
    @solicitud = Solicitud.find(params[:id])
  end

  # POST /solicituds
  # POST /solicituds.json
  def create
    @solicitud = Solicitud.new(params[:solicitud])

    respond_to do |format|
      if @solicitud.save
        format.html { redirect_to @solicitud, notice: 'Solicitud was successfully created.' }
        format.json { render json: @solicitud, status: :created, location: @solicitud }
      else
        format.html { render action: "new" }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /solicituds/1
  # PUT /solicituds/1.json
  def update
    @solicitud = Solicitud.find(params[:id])

    respond_to do |format|
      if @solicitud.update_attributes(params[:solicitud])
        format.html { redirect_to @solicitud, notice: 'Solicitud was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicituds/1
  # DELETE /solicituds/1.json
  def destroy
    @solicitud = Solicitud.find(params[:id])
    @solicitud.destroy

    respond_to do |format|
      format.html { redirect_to solicituds_url }
      format.json { head :no_content }
    end
  end
end
