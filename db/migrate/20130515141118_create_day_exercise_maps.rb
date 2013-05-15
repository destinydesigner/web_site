class CreateDayExerciseMaps < ActiveRecord::Migration
  def change
    create_table :day_exercise_maps do |t|
      t.integer :day_id
      t.integer :exercise_id
      t.references :day

      t.timestamps
    end
    add_index :day_exercise_maps, :day_id
  end
end
