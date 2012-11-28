class Cliente < ActiveRecord::Base
  attr_accessible :cliente, :contacto, :email, :gruemp_id, :nombre, :telefono

  belongs_to :gruemp
end
