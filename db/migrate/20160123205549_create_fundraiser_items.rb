class CreateFundraiserItems < ActiveRecord::Migration
  def change
    create_table :fundraiser_items do |t|

      t.timestamps
    end
  end
end
