class Grupo < ActiveRecord::Base
  attr_accessible :nombre

  has_many :clientes

  validates_presence_of :nombre, :message => 'no puede estar en blanco'
  validates_uniqueness_of :nombre, :message => 'Ya existe'



  before_destroy :check_children!

  #private
  def check_children!
    unless clientes.empty?
      #flash[:notice] = "Post successfully created"
      #self.errors.messages[:children_present] = "Can't destroy parent cause children present!"
      false
    end
  end
end
