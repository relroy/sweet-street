class AddColumnsToHolidays < ActiveRecord::Migration
  def change
    add_column :holidays, :start_date, :datetime
    add_column :holidays, :end_time, :datetime
    add_column :holidays, :name, :string
  end
end
