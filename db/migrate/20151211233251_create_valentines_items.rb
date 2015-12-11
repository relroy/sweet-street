class CreateValentinesItems < ActiveRecord::Migration
  def change
    create_table :valentines_items do |t|
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
