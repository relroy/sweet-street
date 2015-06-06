class CreateSourCandies < ActiveRecord::Migration
  def change
    create_table :sour_candies do |t|
      t.string :name
      t.integer :product_id

      t.timestamps
    end
  end
end
