class Usuario < ActiveRecord::Base
  attr_accessible :apemat, :apepat, :email, :nombre, :password, :usuario

  before_create :upcase_usuario

  def upcase_usuario
    self.usuario.upcase! if self.usuario
  end

  def nombrecompleto
    "#{apepat} #{apemat} #{nombre}"
  end
end
