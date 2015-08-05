class CartedProduct < ActiveRecord::Base

  belongs_to :ws_product
  belongs_to :order
end
