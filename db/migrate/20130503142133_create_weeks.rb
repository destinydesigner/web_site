class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :order
      t.references :program

      t.timestamps
    end
    add_index :weeks, :program_id
  end
end
