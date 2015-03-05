class Execution < ActiveRecord::Base
  belongs_to :execution_types
  has_many :results
  belongs_to :test_object
end
