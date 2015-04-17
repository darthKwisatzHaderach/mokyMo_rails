class CurrentState < ActiveRecord::Base
  belongs_to :project
  belongs_to :component
  belongs_to :user
end
