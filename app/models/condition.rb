class Condition < ActiveRecord::Base
  has_one         :system
  attr_accessible :name
end
