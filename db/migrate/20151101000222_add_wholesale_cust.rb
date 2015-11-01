class AddWholesaleCust < ActiveRecord::Migration
  def change
    create_table "ws_products", force: true do |t|
    t.string   "name"
    t.string   "photo"
    t.decimal  "sm_bag",             precision: 6, scale: 2
    t.decimal  "lg_bag",             precision: 6, scale: 2
    t.decimal  "one_gal_tin",        precision: 6, scale: 2
    t.decimal  "two_gal_tin",        precision: 6, scale: 2
    t.decimal  "three_and_half_tin", precision: 6, scale: 2
    t.decimal  "six_and_half_tin",   precision: 6, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    end
  end
end
