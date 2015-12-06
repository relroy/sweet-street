class CreateChristmasItems < ActiveRecord::Migration
  def change
    create_table :christmas_items do |t|
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
