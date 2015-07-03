class WsPopcornFlavorsController < ApplicationController
  def index
    @ws_flavors = WSPopcornFlavor.all
    @carted_product = CartedProduct.new
  end

  def show
    @ws_popcorn_choice = WSPopcornFlavor.find(params[:id])   
  end

  def create
    @popcorn_flavor = WSPopcornFlavor.create(popcorn_params)
    redirect_to '/popcorn_flavors'
  end

  def new
    @popcorn_flavor = WSPopcornFlavor.new  
  end

  def edit
    @popcorn_flavor = WSPopcornFlavor.find(params[:id])
  end

  def update
    @popcorn_flavor = WSPopcornFlavor.find(params[:id])
    @popcorn_flavor.update(popcorn_params)
    flash[:success] = "Your Popcorn Flavor is updated!"
    redirect_to '/ws_popcorn_flavors' 
  end

  private

  def popcorn_params
    return params.require(:ws_popcorn_flavor).permit(:name, :photo, :sm_bag, :lg_bag, :one_gal_tin, :two_gal_tin, :three_and_half_tin, :six_and_half_tin,:id)  
  end
end
