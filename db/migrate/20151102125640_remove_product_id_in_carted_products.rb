class RemoveProductIdInCartedProducts < ActiveRecord::Migration
  def change
    add_column :carted_products, :ws_product_id, :integer
  end
end
