class Case < ActiveRecord::Base	
  belongs_to :suite
  has_many :case_steps
end
