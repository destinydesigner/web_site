class Day < ActiveRecord::Base
  belongs_to :week
  attr_accessible :order, :section, :week_id

  has_many :exercises
end
