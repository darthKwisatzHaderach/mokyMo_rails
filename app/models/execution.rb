class Execution < ActiveRecord::Base
  belongs_to :type
  has_many :results
end
