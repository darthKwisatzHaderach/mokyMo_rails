class Execution < ActiveRecord::Base
  belongs_to :execution_types
  has_many :results
  accepts_nested_attributes_for :results
  belongs_to :test_object
end
