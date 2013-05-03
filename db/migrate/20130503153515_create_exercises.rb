class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.references :day

      t.timestamps
    end
    add_index :exercises, :day_id
  end
end
