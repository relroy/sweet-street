class CreateSweetestDayItems < ActiveRecord::Migration
  def change
    create_table :sweetest_day_items do |t|
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
