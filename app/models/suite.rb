class Suite < ActiveRecord::Base
	has_many :cases
	belongs_to :component
end
