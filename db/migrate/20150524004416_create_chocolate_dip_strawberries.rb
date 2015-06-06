class CreateChocolateDipStrawberries < ActiveRecord::Migration
  def change
    create_table :chocolate_dip_strawberries do |t|
      t.string :name
      t.integer :product_id

      t.timestamps
    end
  end
end
