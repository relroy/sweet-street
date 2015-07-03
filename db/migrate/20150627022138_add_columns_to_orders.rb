class AddColumnsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :status, :string
    add_column :orders, :user_id, :integer
    add_column :orders, :total, :decimal, :precision => 7, :scale => 2
  end
end
