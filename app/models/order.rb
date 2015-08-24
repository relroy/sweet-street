class Order < ActiveRecord::Base
  has_many :carted_products
  has_many :ws_products, :through => :carted_products
   belongs_to :user

   def sub_total
    sub_total = 0
    carted_products.each do |carted_product|
      if carted_product.sm_bag_qty
        sub_total += (carted_product.ws_product.sm_bag * carted_product.sm_bag_qty)
      end
      if carted_product.lg_bag_qty
        sub_total += (carted_product.ws_product.lg_bag * carted_product.lg_bag_qty)
      end
      if carted_product.one_gal_tin_qty
        sub_total += (carted_product.ws_product.one_gal_tin * carted_product.one_gal_tin_qty)
      end
      if carted_product.two_gal_tin_qty
        sub_total += (carted_product.ws_product.two_gal_tin * carted_product.two_gal_tin_qty)
      end
      if carted_product.three_half_tin_qty
        sub_total += (carted_product.ws_product.three_and_half_tin * carted_product.three_half_tin_qty)
      end
      if carted_product.six_half_tin_qty
        sub_total += (carted_product.ws_product.six_and_half_tin * carted_product.six_half_tin_qty)
      end
    end
    return sub_total
  end
  # do you need this?
  def sales_tax
    sub_total = 0
    carted_products.each do |carted_product|
      if carted_product.sm_bag_qty
        sub_total += (carted_product.ws_product.sm_bag * carted_product.sm_bag_qty)
      end
      if carted_product.lg_bag_qty
        sub_total += (carted_product.ws_product.lg_bag * carted_product.lg_bag_qty)
      end
      if carted_product.one_gal_tin_qty
        sub_total += (carted_product.ws_product.one_gal_tin * carted_product.one_gal_tin_qty)
      end
      if carted_product.two_gal_tin_qty
        sub_total += (carted_product.ws_product.two_gal_tin * carted_product.two_gal_tin_qty)
      end
      if carted_product.three_half_tin_qty
        sub_total += (carted_product.ws_product.three_and_half_tin * carted_product.three_half_tin_qty)
      end
      if carted_product.six_half_tin_qty
        sub_total += (carted_product.ws_product.six_and_half_tin * carted_product.six_half_tin_qty)
      end
    end
      sales_tax = (sub_total * 0.0625).round(2)
    return sales_tax   
  end
  def total
    total = sub_total
  end
end
