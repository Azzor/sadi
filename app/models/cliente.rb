class Cliente < ActiveRecord::Base
  attr_accessible :cliente, :contacto, :email, :grupo_id, :nombre, :telefono

  validates_presence_of :cliente
  validates_uniqueness_of :cliente


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
