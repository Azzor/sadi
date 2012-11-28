class RequerimsController < ApplicationController
  layout 'admin'


  # GET /requerims
  # GET /requerims.json
  def index
    @solicitud = Solicitud.find(params[:ns])
    #@requerims = Requerim.all
    @requerims = Requerim.where(:solicitud_id => params[:ns])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @requerims }
    end
  end

  def lista
    @requerims = Requerim.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @requerims }
    end
  end

  # GET /requerims/1
  # GET /requerims/1.json
  def show
    @requerim = Requerim.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @requerim }
    end
  end

  # GET /requerims/new
  # GET /requerims/new.json
  def new
    @requerim = Requerim.new
    @solicitud_id = params[:ns]
    @requerim.solicitud_id = params[:ns]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @requerim }
    end
  end

  # GET /requerims/1/edit
  def edit
    @requerim = Requerim.find(params[:id])
  end

  # POST /requerims
  # POST /requerims.json
  def create
    @requerim = Requerim.new(params[:requerim])

    respond_to do |format|
      if @requerim.save
        format.html { redirect_to @requerim, notice: 'Requerim was successfully created.' }
        format.json { render json: @requerim, status: :created, location: @requerim }
      else
        format.html { render action: "new" }
        format.json { render json: @requerim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /requerims/1
  # PUT /requerims/1.json
  def update
    @requerim = Requerim.find(params[:id])

    respond_to do |format|
      if @requerim.update_attributes(params[:requerim])
        format.html { redirect_to @requerim, notice: 'Requerim was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @requerim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requerims/1
  # DELETE /requerims/1.json
  def destroy
    @requerim = Requerim.find(params[:id])
    @requerim.destroy

    respond_to do |format|
      format.html { redirect_to requerims_url }
      format.json { head :no_content }
    end
  end
end
