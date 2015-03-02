class Suite < ActiveRecord::Base
	has_many :cases
	has_many :check_lists
	belongs_to :component
end
