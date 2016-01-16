class AddColumnToTins < ActiveRecord::Migration
  def change
    add_column :tins, :photo, :string
  end
end
