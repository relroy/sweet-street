class CreateLayouts < ActiveRecord::Migration
  def change
    create_table :layouts do |t|
      t.string :photo
      t.string :text

      t.timestamps
    end
  end
end
