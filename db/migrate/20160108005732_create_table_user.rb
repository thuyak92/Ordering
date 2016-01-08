class CreateTableUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :email, :null => false
      t.string :password, :null => false
      t.string :phone
      t.string :address
      t.integer :created_by         
      t.integer :updated_by
      t.integer :lock_version, :default => 0
      t.timestamps :null => false
    end
  end
end
