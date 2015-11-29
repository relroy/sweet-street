class AddToHolidays < ActiveRecord::Migration
  def change
    add_column :holidays, :url, :string
  end
end
