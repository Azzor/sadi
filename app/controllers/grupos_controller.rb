class GruposController < ApplicationController

  layout 'admin'

  respond_to :html
  before_filter :get_grupo, :except => [:index, :create]


  def index
    @grupos = Grupo.order(:nombre)
  end

  def show
  end

  def new
  end

  def edit
  end


  def create
    @grupo = Grupo.new(params[:grupo])
    @grupo.save
    #respond_with(@grupo)
    redirect_to :action => :index
  end

  def update
   @post.update_attributes(params[:grupo])
   #respond_with(@grupo)
   redirect_to :action => :index
  end

  def destroy
    unless @grupo.destroy
       flash[:notice] = "No se puede borrar este grupo porque tiene clientes relacionados"
    end
    redirect_to :action => :index
  end

  private
  def get_grupo
    @grupo = params[:id].present? ? Grupo.find(params[:id]) : Grupo.new
  end
end
