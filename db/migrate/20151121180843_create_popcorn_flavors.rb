class CreatePopcornFlavors < ActiveRecord::Migration
  def change
    create_table :popcorn_flavors do |t|

      t.string   "name"
      t.string   "photo"
      t.text   "description"
      t.timestamps
    end
  end
end
