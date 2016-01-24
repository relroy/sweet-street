class Order < ActiveRecord::Base
  has_many :carted_products
  has_many :ws_products, :through => :carted_products
  has_many :fundraiser_items, :through => :carted_products
   belongs_to :user
   

   def sub_total
    
    sub_total = 0
    carted_products.each do |carted_product|
      
        if carted_product.sm_bag_qty && user.ws_cust?
        sub_total += (carted_product.ws_product.sm_bag * carted_product.sm_bag_qty)
        elsif carted_product.sm_bag_qty && user.fundraiser?
        sub_total += (carted_product.fundaiser_item.sm_bag * carted_product.sm_bag_qty)
        end
    end
    return sub_total
  end
 
  
  def total
    total = sub_total
  end
  def shipping_total
    if $total_carted_products == 50
      shipping_total = user.shipping
    elsif $total_carted_products == 100
      shipping_total = user.shipping * 2
    elsif $total_carted_products == 150
      shipping_total = user.shipping * 3
    elsif $total_carted_products == 200
      shipping_total = user.shipping * 4
    elsif $total_carted_products == 250
      shipping_total = user.shipping * 5
    elsif $total_carted_products == 300
      shipping_total = user.shipping * 6
    elsif $total_carted_products == 350
      shipping_total = user.shipping * 7
    elsif $total_carted_products == 400
      shipping_total = user.shipping * 8
    elsif $total_carted_products == 450
      shipping_total = user.shipping * 9
    elsif $total_carted_products == 500
      shipping_total = user.shipping * 10
        
    end
      return shipping_total
  end
  def total_with_shipping
    total_with_shipping = (shipping_total + total)
    return total_with_shipping
    
  end

  
end
