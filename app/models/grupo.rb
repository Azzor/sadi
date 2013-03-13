class Grupo < ActiveRecord::Base
  attr_accessible :nombre

  validates_presence_of :nombre, :message => 'no puede estar en blanco'
  validates_uniqueness_of :nombre, :message => 'Ya existe'

  has_many :clientes

  before_destroy :check_children!

  private
  def check_children!
    unless @grupo.clientes.empty?
      self.errors.messages[:children_present] = "Can't destroy parent cause children present!"
      false
    end
  end
end
