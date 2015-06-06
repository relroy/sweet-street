class CreateRetroCandies < ActiveRecord::Migration
  def change
    create_table :retro_candies do |t|
      t.string :name
      t.integer :product_id

      t.timestamps
    end
  end
end
