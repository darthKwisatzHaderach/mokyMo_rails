class Result < ActiveRecord::Base
  belongs_to :execution
  belongs_to :check_list
end
