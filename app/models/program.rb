class Program < ActiveRecord::Base
  attr_accessible :level, :name
  has_many :weeks
end
