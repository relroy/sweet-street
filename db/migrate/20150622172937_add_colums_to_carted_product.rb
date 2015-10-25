class AddColumsToCartedProduct < ActiveRecord::Migration
  def change
    add_column :carted_products, :product_id, :integer
    add_column :carted_products, :order_id, :integer
    add_column :carted_products, :quantity, :integer
  end
end
