class CreateChewyCandies < ActiveRecord::Migration
  def change
    create_table :chewy_candies do |t|
      t.string :name
      t.integer :product_id

      t.timestamps
    end
  end
end
