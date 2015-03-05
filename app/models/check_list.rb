class CheckList < ActiveRecord::Base
  belongs_to :suite
  has_many :results
end
