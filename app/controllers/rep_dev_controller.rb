class RepDevController < ApplicationController

  layout 'admin'

  def busca
    @solicitud = Solicitud.new

    respond_to do |format|
      format.html # busca.html.erb
      format.json { render json: @solicitud }
    end
  end

  def listado
    @solicituds = Solicitud.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @solicituds }
    end
  end
end
