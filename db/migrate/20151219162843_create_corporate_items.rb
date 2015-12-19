class CreateCorporateItems < ActiveRecord::Migration
  def change
    create_table :corporate_items do |t|
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
