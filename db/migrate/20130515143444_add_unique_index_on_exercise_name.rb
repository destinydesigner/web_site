class AddUniqueIndexOnExerciseName < ActiveRecord::Migration
  def up
  end

  def change
    add_index :exercises, :name, :unique => true
  end

  def down
  end
end
