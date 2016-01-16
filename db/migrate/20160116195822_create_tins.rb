class CreateTins < ActiveRecord::Migration
  def change
    create_table :tins do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
