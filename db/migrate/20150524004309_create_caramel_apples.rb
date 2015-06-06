class CreateCaramelApples < ActiveRecord::Migration
  def change
    create_table :caramel_apples do |t|
      t.string :name
      t.integer :product_id

      t.timestamps
    end
  end
end
