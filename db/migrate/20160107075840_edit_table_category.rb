class EditTableCategory < ActiveRecord::Migration
  def change
    add_column :categories, :has_icon, :integer, :after => :parent, :default => 0
    add_column :categories, :image_url, :string, :after => :has_icon
  end
end
