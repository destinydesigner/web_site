class Exercise < ActiveRecord::Base
  has_and_belongs_to_many :days
  attr_accessible :name
end
