class AddItemAndOrderTotalToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :order_total, :decimal, :default => 0
    add_column :orders, :items, :string, array: true, :default => []
  end
end
