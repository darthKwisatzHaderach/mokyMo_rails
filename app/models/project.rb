class Project < ActiveRecord::Base
	has_many :suites
	has_many :components
end
