class AddColumnToLayouts < ActiveRecord::Migration
  def change
    add_column :layouts, :active, :boolean, :default => false
  end
end
