class AddColumnsToFlavors < ActiveRecord::Migration
  def change
    add_column :popcorn_flavors, :sm_bag, :decimal, precision:6, scale:2
    add_column :popcorn_flavors, :lg_bag, :decimal, precision:6, scale:2
    add_column :popcorn_flavors, :one_gal_tin, :decimal, precision:6, scale:2
    add_column :popcorn_flavors, :two_gal_tin, :decimal, precision:6, scale:2
    add_column :popcorn_flavors, :three_and_half_tin, :decimal, precision:6, scale:2
    add_column :popcorn_flavors, :six_and_half_tin, :decimal, precision:6, scale:2
  end
end
