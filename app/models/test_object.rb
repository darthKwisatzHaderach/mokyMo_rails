class TestObject < ActiveRecord::Base
  belongs_to :project
  has_many :executions
end
