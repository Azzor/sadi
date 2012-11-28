class ImpgensController < ApplicationController
  # GET /impgens
  # GET /impgens.json
  layout 'admin'

  def index
    @impgens = Impgen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @impgens }
    end
  end

  # GET /impgens/1
  # GET /impgens/1.json
  def show
    @impgen = Impgen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @impgen }
    end
  end

  # GET /impgens/new
  # GET /impgens/new.json
  def new
    @impgen = Impgen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @impgen }
    end
  end

  # GET /impgens/1/edit
  def edit
    @impgen = Impgen.find(params[:id])
  end

  # POST /impgens
  # POST /impgens.json
  def create
    @impgen = Impgen.new(params[:impgen])

    respond_to do |format|
      if @impgen.save
        format.html { redirect_to @impgen, notice: 'Impgen was successfully created.' }
        format.json { render json: @impgen, status: :created, location: @impgen }
      else
        format.html { render action: "new" }
        format.json { render json: @impgen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /impgens/1
  # PUT /impgens/1.json
  def update
    @impgen = Impgen.find(params[:id])

    respond_to do |format|
      if @impgen.update_attributes(params[:impgen])
        format.html { redirect_to @impgen, notice: 'Impgen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @impgen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impgens/1
  # DELETE /impgens/1.json
  def destroy
    @impgen = Impgen.find(params[:id])
    @impgen.destroy

    respond_to do |format|
      format.html { redirect_to impgens_url }
      format.json { head :no_content }
    end
  end
end
