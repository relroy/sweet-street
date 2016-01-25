class AddSmBag2ToFundraiserItems < ActiveRecord::Migration
  def change
    add_column :fundraiser_items, :sm_bag_1, :decimal, precision: 6, scale: 2
  end
end
