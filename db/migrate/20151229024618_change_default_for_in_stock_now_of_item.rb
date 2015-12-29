class ChangeDefaultForInStockNowOfItem < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.change :in_stock_now, :integer, :default => -1
    end
  end
end
