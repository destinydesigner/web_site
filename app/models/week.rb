class Week < ActiveRecord::Base
  belongs_to :program
  attr_accessible :order

  has_many :days
end
