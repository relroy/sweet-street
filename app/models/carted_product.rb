class CartedProduct < ActiveRecord::Base
  belongs_to :ws_popcorn_flavors
  belongs_to :order
end
