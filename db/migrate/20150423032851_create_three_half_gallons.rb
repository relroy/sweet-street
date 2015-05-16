class CreateThreeHalfGallons < ActiveRecord::Migration
  def change
    create_table :three_half_gallons do |t|
      t.string :name
      t.decimal :price, :precision => 6, :scale => 2

      t.timestamps
    end
  end
end
