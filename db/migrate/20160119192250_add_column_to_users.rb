class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :shipping, :decimal, precision: 6, scale: 2
  end
end
