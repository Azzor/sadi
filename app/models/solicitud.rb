class Solicitud < ActiveRecord::Base
  attr_accessible :cliente, :devest_on, :impesp, :importe, :ingreso_on, :per1_on, :per2_on, :tramite, :usu_gerente, :usu_junior, :usu_senior, :usu_socio, :honorarios, :factura, :factura_on

  belongs_to :cliente, :foreign_key => 'cliente_cliente'
end
