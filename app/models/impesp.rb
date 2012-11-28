class Impesp < ActiveRecord::Base
  attr_accessible :impesp, :impgen, :impgen_id

  belongs_to :impgen

  #default_scope   :include => :impgen
end
