class WsProductsController < ApplicationController
  def index   
    @ws_products = WsProduct.all
    @carted_product = CartedProduct.new
    if 
    @order = Order.find_by(:user_id => current_user.id, :status => "cart")
    @carted_products = @order.carted_products
    end
  end

  def show
    @ws_product = WsProduct.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @ws_product = WsProduct.new 
    end
  end

  def create
    @ws_product = WsProduct.create(product_params) 
    redirect_to '/ws_products'   
  end

  def edit
    @ws_product = WsProduct.find(params[:id])
    
  end

  def update
    @ws_product = WsProduct.find(params[:id])
    @ws_product.update(product_params) 
    flash[:success] = "Your Whole Sale Product is updated!"
    redirect_to '/ws_products'    
  end

  def destroy
    @ws_product = WsProduct.find(params[:id])
    @ws_product.destroy
    flash[:warning] = "Wholesale Product Deleted"
     redirect_to "/ws_products"
  end

  private 

    def product_params
    return params.require(:ws_product).permit(:name, :photo, :sm_bag_qty, :lg_bag_qty, one_gal_tin_qty, :two_gal_tin_qty, :two_half_tin_qty, :three_half_tin_qty, :six_half_tin_qty, :ws_product_id)     
    end
end