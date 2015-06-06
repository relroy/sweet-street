class CreateTruffles < ActiveRecord::Migration
  def change
    create_table :truffles do |t|
      t.string :name
      t.integer :product_id

      t.timestamps
    end
  end
end
