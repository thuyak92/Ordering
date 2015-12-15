class Order < ActiveRecord::Migration
  def change
    create_table :Order do |t|
      t.integer :user_id
      t.date :required_date
      t.integer :created_by         
      t.integer :updated_by
      t.integer :lock_version, :default => 0
      t.timestamps null: false
    end
  end
end
