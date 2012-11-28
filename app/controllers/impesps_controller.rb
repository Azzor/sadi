class ImpespsController < ApplicationController
  # GET /impesps
  # GET /impesps.json
  layout 'admin'

  def index
    @impesps = Impesp.select("impesps.id,impesp,impgen_id,impgen as impgen2").joins("LEFT JOIN impgens ON impesps.impgen_id = impgens.id")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @impesps }
    end
  end

  # GET /impesps/1
  # GET /impesps/1.json
  def show
    @impesp = Impesp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @impesp }
    end
  end

  # GET /impesps/new
  # GET /impesps/new.json
  def new
    @impesp = Impesp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @impesp }
    end
  end

  # GET /impesps/1/edit
  def edit
    @impesp = Impesp.find(params[:id])
  end

  # POST /impesps
  # POST /impesps.json
  def create
    @impesp = Impesp.new(params[:impesp])

    respond_to do |format|
      if @impesp.save
        format.html { redirect_to @impesp, notice: 'Impesp was successfully created.' }
        format.json { render json: @impesp, status: :created, location: @impesp }
      else
        format.html { render action: "new" }
        format.json { render json: @impesp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /impesps/1
  # PUT /impesps/1.json
  def update
    @impesp = Impesp.find(params[:id])

    respond_to do |format|
      if @impesp.update_attributes(params[:impesp])
        format.html { redirect_to @impesp, notice: 'Impesp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @impesp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impesps/1
  # DELETE /impesps/1.json
  def destroy
    @impesp = Impesp.find(params[:id])
    @impesp.destroy

    respond_to do |format|
      format.html { redirect_to impesps_url }
      format.json { head :no_content }
    end
  end
end
