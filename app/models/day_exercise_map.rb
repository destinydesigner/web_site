class DayExerciseMap < ActiveRecord::Base
  belongs_to :day
  attr_accessible :day_id, :exercise_id
end
