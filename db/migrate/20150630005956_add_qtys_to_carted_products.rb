class AddQtysToCartedProducts < ActiveRecord::Migration
  def change
    add_column :carted_products, :sm_bag_qty, :integer
    add_column :carted_products, :lg_bag_qty, :integer
    add_column :carted_products, :one_gal_tin_qty, :integer
    add_column :carted_products, :two_gal_tin_qty, :integer
    add_column :carted_products, :three_half_tin_qty, :integer
    add_column :carted_products, :six_half_tin_qty, :integer


  end
end
