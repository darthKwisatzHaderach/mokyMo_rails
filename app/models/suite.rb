class Suite < ActiveRecord::Base
  acts_as_paranoid
  has_many :cases
  has_many :check_lists
  belongs_to :component, -> { with_deleted }
end
