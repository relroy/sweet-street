class CreateFundraisers < ActiveRecord::Migration
  def change
    create_table :fundraisers do |t|
      t.string :name
      t.string :photo
      t.decimal :sm_bag

      t.timestamps
    end
  end
end
