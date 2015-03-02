class Project < ActiveRecord::Base	
  has_many :components
  has_many :test_objects
end
