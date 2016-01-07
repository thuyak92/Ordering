class EditTableUser < ActiveRecord::Migration
  def change
    change_column :users, :name, :null => :false
    add_column :users, :password, :string, :null => :false
    add_column :users, :last_name, :string, :null => :false
    change_column :users, :email, :null => :false
    change_column :users, :account_type, :after => :password, :default => 0
  end
end
