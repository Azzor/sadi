class Cliente < ActiveRecord::Base
  attr_accessible :cliente, :contacto, :email, :grupo_id, :nombre, :telefono

  validates_presence_of :cliente, :message => 'no puede estar en blanco'
  validates_presence_of :nombre, :message => 'no puede estar en blanco'
  validates_uniqueness_of :cliente, :message => 'ya existe'


  belongs_to :grupo
  has_many :solicituds, :foreign_key => :cliente

  before_destroy :check_children!

  private
  def check_children!
    unless solicituds.empty?
      self.errors.messages[:children_present] = "Can't destroy parent cause children present!"
      false
    end
  end
end
