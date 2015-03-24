class Result < ActiveRecord::Base
  belongs_to :execution
  belongs_to :check_list
  accepts_nested_attributes_for :check_list
end
