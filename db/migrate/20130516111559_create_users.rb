class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_account
      t.string :passwd
      t.string :name

      t.timestamps
    end
  end
end
