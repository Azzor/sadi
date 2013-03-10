class Grupo < ActiveRecord::Base
  attr_accessible :nombre

  validates :nombre, :presence => true, :uniqueness => true

  has_many :clientes

  before_destroy :check_children!

  private
  def check_children!
    unless clientes.empty?
      self.errors.messages[:children_present] = "Can't destroy parent cause children present!"
      false
    end
  end
end
