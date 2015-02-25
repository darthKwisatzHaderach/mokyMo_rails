class Component < ActiveRecord::Base
  belongs_to :project
  has_many :suites
end
