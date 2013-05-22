class AddColumnUserIdOnProgram < ActiveRecord::Migration
  def up
  end

  def change
    add_column :programs, :user_id, :integer
  end

  def down
  end
end
