class TestObject < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :component, -> { with_deleted }
  has_many :executions
end
