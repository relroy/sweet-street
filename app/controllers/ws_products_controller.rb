class WsProductsController < ApplicationController
  def index
    
    @ws_products = WSProduct.all
    @carted_product = CartedProduct.new
  end

  def show
    @ws_product = WSProduct.find(params[:id])
  end

  def new
    
  end

  def create
    
    
  end

  def update
    @ws_product = WSProduct.find(params[:id])
    @ws_product.update({:name => params[:name]}) #more needed here
    
  end

  def destroy
    @ws_product = WSProduct.find(params[:id])
    @ws_product.destroy
    flash[:warning] = "Wholesale Product Deleted"
     redirect_to "/ws_products"
  end


end
