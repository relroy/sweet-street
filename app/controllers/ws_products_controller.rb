class WsProductsController < ApplicationController
  def index   
    @ws_products = WsProduct.all
    @carted_product = CartedProduct.new
    if 
    @order = Order.find_by(:user_id => current_user.id, :status => "cart")
    @carted_products = @order.carted_products
    $total_carted_products = 0
    @carted_products.each do |carted_product|
      $total_carted_products += carted_product.sm_bag_qty
    end
    end
  end

  def show
    @ws_product = WsProduct.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @ws_product = WsProduct.new 
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @ws_product = WsProduct.create(product_params) 
    redirect_to '/ws_products'   
  end

  def edit
    if user_signed_in? && current_user.admin?
    @ws_product = WsProduct.find(params[:id])
    else render :file => "/public/404.html", :status => 404
    end
  end

  def update
    @ws_product = WsProduct.find(params[:id])
    @ws_product.update(product_params) 
    # flash[:success] = "Your Whole Sale Product is updated!"
    redirect_to '/ws_products'    
  end

  def destroy
    @ws_product = WsProduct.find(params[:id])
    @ws_product.destroy
    # flash[:warning] = "Wholesale Product Deleted"
     redirect_to "/ws_products"
  end

  private 

    def product_params
    return params.require(:ws_product).permit(:name, :photo, :sm_bag, :lg_bag, :one_gal_tin, :two_gal_tin, :two_half_tin, :three_and_half_tin, :six_and_half_tin, :ws_product_id, :id)     
    end
end