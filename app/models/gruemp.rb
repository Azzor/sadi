class Gruemp < ActiveRecord::Base
  attr_accessible :nombre

  has_many :clientes

  before_destroy :check_for_clientes

  private

  def check_for_clientes
    if clientes.count > 0
      errors.add_to_base("Existen clientes en este grupo")
      return false
    end
  end
end
