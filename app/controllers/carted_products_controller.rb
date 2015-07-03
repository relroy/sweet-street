class CartedProductsController < ApplicationController
  def create
    if Order.find_by(:status => "cart", :user_id => current_user.id)
      @order = Order.find_by(:status => "cart", :user_id => current_user.id)
    else
      @order = Order.create(:status => "cart", :user_id => current_user.id)
    end
    CartedProduct.create(carted_product_params.merge({:order_id => @order.id}))
    flash[:success] = "Added to cart."
    redirect_to "/ws_popcorn_flavors"
  end
  def index

    @order = Order.find_by(:user_id => current_user.id, :status => "cart")
    @carted_products = @order.carted_products
  end

  def carted_product_params
    return params.require(:carted_product).permit(:product_id, :sm_bag_qty, :lg_bag_qty, :one_gal_tin_qty, :two_gal_tin_qty, :two_half_tin_qty, :six_half_tin_qty)
    
  end
  
end
