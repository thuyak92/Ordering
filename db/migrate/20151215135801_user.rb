class User < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.integer :created_by         
      t.integer :updated_by
      t.integer :lock_version, :default => 0
      t.timestamps null: false
    end
  end
end
