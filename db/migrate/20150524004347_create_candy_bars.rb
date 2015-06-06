class CreateCandyBars < ActiveRecord::Migration
  def change
    create_table :candy_bars do |t|
      t.string :name
      t.integer :product_id

      t.timestamps
    end
  end
end
