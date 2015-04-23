class Result < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :execution, -> { with_deleted }
  belongs_to :check_list, -> { with_deleted }
  accepts_nested_attributes_for :check_list
  has_one :status_kind
end
