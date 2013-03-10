class GruempsController < ApplicationController

  layout 'admin'

  respond_to :html
  before_filter :get_gruemp, :except => [:index, :create]


  def index
    @gruemps = Gruemp.all
  end

  def show
  end

  def new
  end

  def edit
  end

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

  def destroy
    @gruemp = Gruemp.find(params[:id])
    @gruemp.destroy
  end

  private
    def get_gruemp
      @gruemp = params[:id].present? ? Gruemp.find(params[:id]) : Gruemp.new
    end
end
