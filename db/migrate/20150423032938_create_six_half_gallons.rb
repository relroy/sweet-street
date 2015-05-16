class CreateSixHalfGallons < ActiveRecord::Migration
  def change
    create_table :six_half_gallons do |t|
      t.string :name
      t.decimal :price, :precision => 6, :scale => 2

      t.timestamps
    end
  end
end
