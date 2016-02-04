class Patient < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :medical_history
  has_one :user
end
