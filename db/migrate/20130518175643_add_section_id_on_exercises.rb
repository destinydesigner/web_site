class AddSectionIdOnExercises < ActiveRecord::Migration
  def up
  end

  def change
      add_column :exercises, :section_id, :integer
  end

  def down
  end
end
