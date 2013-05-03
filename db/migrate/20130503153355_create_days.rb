class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :order
      t.string :section
      t.references :week

      t.timestamps
    end
    add_index :days, :week_id
  end
end
