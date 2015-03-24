class CheckList < ActiveRecord::Base
  belongs_to :suite
  has_many :results
  has_many :executions, through: :results
  accepts_nested_attributes_for :results
end
