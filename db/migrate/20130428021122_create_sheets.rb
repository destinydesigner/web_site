class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.string :no
      t.string :description

      t.timestamps
    end
  end
end
