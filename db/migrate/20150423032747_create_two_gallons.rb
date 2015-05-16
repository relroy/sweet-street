class CreateTwoGallons < ActiveRecord::Migration
  def change
    create_table :two_gallons do |t|
      t.string :name
      t.decimal :price, :precision => 6, :scale => 2

      t.timestamps
    end
  end
end
