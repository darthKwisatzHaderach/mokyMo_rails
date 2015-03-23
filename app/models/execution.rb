class Execution < ActiveRecord::Base
  belongs_to :execution_types
  belongs_to :test_object
  has_many :results
  accepts_nested_attributes_for :results
end
