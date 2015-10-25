class PopcornFlavorsController < ApplicationController
  
  def index
    @popcorn_flavors = PopcornFlavor.all
    
  end

  def show
    @popcorn_choice = PopcornFlavor.find(params[:id])
    
  end

  def create
    @popcorn_flavor = PopcornFlavor.create(popcorn_params)
    redirect_to '/popcorn_flavors'
  end

  def new
    @popcorn_flavor = PopcornFlavor.new
    
  end

  def edit
    @popcorn_flavor = PopcornFlavor.find(params[:id])
  end

  def update
    @popcorn_flavor = PopcornFlavor.find(params[:id])
    @popcorn_flavor.update(popcorn_params)
    # flash[:success] = "Your Popcorn Flavor is updated!"
    redirect_to '/popcorn_flavors'
    
  end

  private

  def popcorn_params
    return params.require(:popcorn_flavor).permit(:name, :photo, :sm_bag, :lg_bag, :one_gal_tin, :two_gal_tin, :three_and_half_tin, :six_and_half_tin,:description,:id)
    
  end


end
