class Exercise < ActiveRecord::Base
  belongs_to :day
  attr_accessible :name
end
