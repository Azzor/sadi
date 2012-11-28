class Gruemp < ActiveRecord::Base
  attr_accessible :nombre

  has_many :clientes
end
