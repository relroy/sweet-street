class AddColumnToPopcornFlavors < ActiveRecord::Migration
  def change
    add_column :popcorn_flavors, :description, :string
  end
end
