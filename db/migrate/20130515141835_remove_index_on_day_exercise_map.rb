class RemoveIndexOnDayExerciseMap < ActiveRecord::Migration
  def up
  end

  def change
    remove_index :day_exercise_maps, :day_id
  end

  def down
  end
end
