class Components < ActiveRecord::Base
  belongs_to :project
  has_many :suites
end
