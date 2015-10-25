class CreateCartedProducts < ActiveRecord::Migration
  def change
    create_table :carted_products do |t|

      t.timestamps
    end
  end
end
