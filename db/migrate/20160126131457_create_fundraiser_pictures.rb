class CreateFundraiserPictures < ActiveRecord::Migration
  def change
    create_table :fundraiser_pictures do |t|
      t.string :name
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
