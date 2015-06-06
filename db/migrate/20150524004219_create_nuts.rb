class CreateNuts < ActiveRecord::Migration
  def change
    create_table :nuts do |t|
      t.string :name
      t.integer :product_id

      t.timestamps
    end
  end
end
