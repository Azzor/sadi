class Impgen < ActiveRecord::Base
  attr_accessible :impgen

  has_many :impesps
end
