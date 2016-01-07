class EditTableItems < ActiveRecord::Migration
  def change
    add_column :items, :has_image, :integer, :after => :category_id, :default => 0
    add_column :items, :image_url, :string, :after => :has_image
  end
end
