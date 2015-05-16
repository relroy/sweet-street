class AddColumnWhlSalesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ws_cust, :boolean, :default => false
  end
end
