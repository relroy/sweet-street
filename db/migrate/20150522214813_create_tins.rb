class CreateTins < ActiveRecord::Migration
  def change
    create_table :tins do |t|
      t.string  :name
      t.integer :size_id

      t.timestamps
    end
  end
end
