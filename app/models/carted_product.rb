class CartedProduct < ActiveRecord::Base

  belongs_to :ws_product
  belongs_to :fundraiser_item
  belongs_to :order

  def sub_total
    sub_total = 0
    if user_signed_in? && current_user.ws_cust? && sm_bag_qty
        sub_total += (ws_product.sm_bag * sm_bag_qty)
    elsif user_signed_in? && current_user.fundraiser? && sm_bag_qty
        sub_total += (fundraiser_item.sm_bag * sm_bag_qty)
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
      if user_signed_in? && current_user.ws_cust? 
        order_sub_total += (carted_product.ws_product.sm_bag * carted_product.sm_bag_qty)
      elsif user_signed_in? && current_user.fundraiser? && carted_product.sm_bag_qty
        order_sub_total += (carted_product.fundraiser.sm_bag * carted_product.sm_bag_qty)
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
