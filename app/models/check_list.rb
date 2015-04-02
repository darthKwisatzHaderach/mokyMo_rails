class CheckList < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :suite, -> { with_deleted }
  has_many :results
  has_many :executions, through: :results
  accepts_nested_attributes_for :results
end
