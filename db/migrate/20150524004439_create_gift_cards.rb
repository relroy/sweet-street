class CreateGiftCards < ActiveRecord::Migration
  def change
    create_table :gift_cards do |t|
      t.string :name
      t.integer :product_id

      t.timestamps
    end
  end
end
