class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.string  :name
      t.integer :popcorn_id

      t.timestamps
    end
  end
end
