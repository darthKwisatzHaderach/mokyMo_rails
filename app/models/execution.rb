class Execution < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :execution_types, -> { with_deleted }
  belongs_to :test_object, -> { with_deleted }
  has_many :results
  has_many :check_lists, through: :results
  accepts_nested_attributes_for :results
end
