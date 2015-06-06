class AddPhotoToPopcornFlavors < ActiveRecord::Migration
  def change
    add_column :popcorn_flavors, :photo, :string
  end
end
