class AddColumnsToFundraiserItem < ActiveRecord::Migration
  def change
    add_column :fundraiser_items, :name, :string
    add_column :fundraiser_items, :photo, :string
    add_column :fundraiser_items, :sm_bag, :decimal, precision: 6, scale: 2
  end
end
