class AddColumnsToFundraiser < ActiveRecord::Migration
  def change
    add_column :fundraiser_items, :sm_bag_2, :decimal, precision: 6, scale: 2
    add_column :fundraiser_items, :sm_bag_3, :decimal, precision: 6, scale: 2
  end
end
