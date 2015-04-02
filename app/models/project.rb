class Project < ActiveRecord::Base	
  acts_as_paranoid
  has_many :components
  has_many :test_objects
end
