class AddColumnsToTinsDescriptions < ActiveRecord::Migration
  def change
    add_column :tins, :description2, :string
    add_column :tins, :description3, :string
    add_column :tins, :description4, :string
    add_column :tins, :description5, :string
    add_column :tins, :description6, :string
  end
end
