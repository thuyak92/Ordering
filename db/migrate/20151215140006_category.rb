class Category < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :has_sub_category
      t.integer :parent
      t.integer :created_by         
      t.integer :updated_by
      t.integer :lock_version, :default => 0
      t.timestamps null: false
    end
  end
end
