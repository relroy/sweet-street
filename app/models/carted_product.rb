class CartedProduct < ActiveRecord::Base

  belongs_to :ws_product
  belongs_to :order

  validates_numericality_of :sm_bag_qty, :greater_than=> 49

  def sub_total
    sub_total = 0
      if sm_bag_qty
        sub_total += (ws_product.sm_bag * sm_bag_qty)
      end
      if lg_bag_qty
        sub_total += (ws_product.lg_bag * lg_bag_qty)
      end
      if one_gal_tin_qty
        sub_total += (ws_product.one_gal_tin * one_gal_tin_qty)
      end
      if two_gal_tin_qty
        sub_total += (ws_product.two_gal_tin * two_gal_tin_qty)
      end
      if three_half_tin_qty
        sub_total += (ws_product.three_and_half_tin * three_half_tin_qty)
      end
      if six_half_tin_qty
        sub_total += (ws_product.six_and_half_tin * six_half_tin_qty)
      end

      return sub_total
  end

  def order_sub_total
      order_sub_total = 0
    @carted_products.each do |carted_product|
      if carted_product.sm_bag_qty
        order_sub_total += (carted_product.ws_product.sm_bag * carted_product.sm_bag_qty)
      end
      if carted_product.lg_bag_qty
        order_sub_total += (carted_product.ws_product.lg_bag * carted_product.lg_bag_qty)
      end
      if carted_product.one_gal_tin_qty
        order_sub_total += (carted_product.ws_product.one_gal_tin * carted_product.one_gal_tin_qty)
      end
      if carted_product.two_gal_tin_qty
        order_sub_total += (carted_product.ws_product.two_gal_tin * carted_product.two_gal_tin_qty)
      end
      if carted_product.three_half_tin_qty
        order_sub_total += (carted_product.ws_product.three_and_half_tin * carted_product.three_half_tin_qty)
      end
      if carted_product.six_half_tin_qty
        order_sub_total += (carted_product.ws_product.six_and_half_tin * carted_product.six_half_tin_qty)
      end
    end
      return order_sub_total
  end


end
