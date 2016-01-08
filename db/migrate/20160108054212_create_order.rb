class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id, :null => false
      t.string :delivery_address, :null => false
      t.string :phone, :null => false
      t.string :items, :null => false
      t.date :required_date, :null => false
      t.float :delivery_cost, :default => 0.0
      t.string :promo_code
      t.float :order_total, :default => 0.0
      t.float :coord_long, :default => 105.850129
      t.float :coord_lat, :default => 21.02984
      t.integer :state, :default => 0
      t.integer :user_delete, :default => 0
      t.integer :created_by         
      t.integer :updated_by
      t.integer :lock_version, :default => 0
      t.timestamps null: false
    end
  end
end
