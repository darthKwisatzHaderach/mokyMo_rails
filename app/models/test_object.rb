class TestObject < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :project, -> { with_deleted }
  has_many :executions
end
