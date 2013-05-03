class Day < ActiveRecord::Base
  belongs_to :week
  attr_accessible :order, :section

  has_many :exercises
end
