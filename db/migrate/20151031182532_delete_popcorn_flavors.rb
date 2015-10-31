class DeletePopcornFlavors < ActiveRecord::Migration
  def change
    drop_table :popcorn_flavors
  end
end
