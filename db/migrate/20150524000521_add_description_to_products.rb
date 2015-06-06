class AddDescriptionToProducts < ActiveRecord::Migration
  def change
    add_column :products, :description, :text
    remove_column :products, :price, :decimal, precision: 6, scale: 2
  end
end
