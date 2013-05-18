class AddColumn < ActiveRecord::Migration
  def up
  end

  def change
      add_column :exercises, :section, :string
      add_column :exercises, :level, :integer
  end

  def down
  end
end
