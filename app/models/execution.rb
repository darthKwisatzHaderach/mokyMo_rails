class Execution < ActiveRecord::Base
  belongs_to :execution_types
  belongs_to :test_object
  has_many :results
  has_many :check_lists, through: :results
  accepts_nested_attributes_for :results
end
