class MedicalHistory < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :patient
  has_many   :systems
end
