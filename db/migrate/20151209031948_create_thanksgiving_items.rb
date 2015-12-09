class CreateThanksgivingItems < ActiveRecord::Migration
  def change
    create_table :thanksgiving_items do |t|
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
