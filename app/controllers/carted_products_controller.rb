class CartedProductsController < ApplicationController
  def create
    if Order.find_by(:status => "cart", :user_id => current_user.id)
      @order = Order.find_by(:status => "cart", :user_id => current_user.id)
    else
      @order = Order.create(:status => "cart", :user_id => current_user.id)
    end
    CartedProduct.create(carted_product_params.merge({:order_id => @order.id}))
    if @order.user.ws_cust?
      redirect_to "/ws_products"
    elsif @order.user.fundraiser?
      redirect_to "/fundraiser_items"  
    end
  end
  def index
    if 
    @order = Order.find_by(:user_id => current_user.id, :status => "cart")
    @carted_products = @order.carted_products
    else
    redirect_to "/"
    end
    ws_product_id = params[:id]
  end

  def show
    @carted_product = CartedProduct.find(params[:id])
  end

  def edit
    @order = Order.find_by(:user_id => current_user.id, :status => "cart")
    @carted_product = CartedProduct.find(params[:id])    
  end

  def update
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.update(carted_product_params) 
    @order = Order.find_by(:user_id => current_user.id, :status => "cart")
    # flash[:success] = "Your Whole Sale Product is updated!"
    if @order.user.ws_cust?
    redirect_to '/ws_products'
    elsif @order.user.fundraiser?
    redirect_to '/fundraiser_items'
    end    
  end

  def destroy
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.destroy
    # flash[:warning] = "Wholesale Product Deleted"
     if current_user.ws_cust?
    redirect_to '/ws_products'
    elsif current_user.fundraiser?
    redirect_to '/fundraiser_items'
    end    
  end

  def carted_product_params
    return params.require(:carted_product).permit(:ws_product_id, :fundraiser_item_id, :sm_bag_qty, :lg_bag_qty, :one_gal_tin_qty, :two_gal_tin_qty, :two_half_tin_qty, :three_half_tin_qty, :six_half_tin_qty)
    
  end
  
end
