class Component < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :project, -> { with_deleted }
  has_many :test_objects
  has_many :suites
end
