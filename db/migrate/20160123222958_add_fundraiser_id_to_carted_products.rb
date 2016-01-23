class AddFundraiserIdToCartedProducts < ActiveRecord::Migration
  def change
    add_column :carted_products, :fundraiser_item_id, :integer
  end
end
