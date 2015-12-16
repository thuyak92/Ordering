class RenameTableOrder < ActiveRecord::Migration
  def change
    rename_table :Order, :orders
  end
end
