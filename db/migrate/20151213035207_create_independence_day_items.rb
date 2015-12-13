class CreateIndependenceDayItems < ActiveRecord::Migration
  def change
    create_table :independence_day_items do |t|
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
