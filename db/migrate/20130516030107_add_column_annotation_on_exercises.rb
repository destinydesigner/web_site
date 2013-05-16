class AddColumnAnnotationOnExercises < ActiveRecord::Migration
  def up
  end

  def change
      add_column :exercises, :annotation, :text
  end

  def down
  end
end
