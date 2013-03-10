class RepDevController < ApplicationController

  layout 'admin'

  def busca
    #@solicitud = Solicitud.new

    respond_to do |format|
      format.html # busca.html.erb
      format.json { render json: @solicitud }
    end
  end


  def listado
    @p = params
    cquery = ''
    gruemp_id = params[:cliente].fetch('gruemp_id')
    cliente_id = params[:cliente].fetch('cliente_id')
    usu_socio = params[:usu_socio].fetch('usuario')
    usu_gerente = params[:usu_gerente].fetch('usuario')
    usu_senior = params[:usu_senior].fetch('usuario')
    usu_junior = params[:usu_junior].fetch('usuario')
    ntipo = params[:ntipo]
    nfact = params[:nfact]

    unless gruemp_id.blank?
      cquery = cquery + " AND gruemp=" + gruemp_id.to_s
    end
    unless cliente_id.blank?
      cquery = cquery + " AND cliente='" + cliente_id.to_s + "'"
    end
    unless usu_socio.blank?
      cquery = cquery + " AND usu_socio='" + usu_socio + "'"
    end
    unless usu_gerente.blank?
      cquery = cquery + " AND usu_gerente='" + usu_gerente + "'"
    end
    unless usu_senior.blank?
      cquery = cquery + " AND usu_senior='" + usu_senior + "'"
    end
    unless usu_junior.blank?
      cquery = cquery + " AND usu_junior='" + usu_junior + "'"
    end
    unless cquery.blank?
      cquery = cquery[5..-1]
    end

    @solicituds = Solicitud.where(cquery)
    #@x = Solicitud.joins(:clientes).where(cquery).to_sql
    @cccquery = cquery

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @solicituds }
    end
  end
end
