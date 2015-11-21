class PopcornFlavorsController < ApplicationController
  def index
    @popcorn_flavors = PopcornFlavor.all
    
  end

  def new
    if user_signed_in? && current_user.admin?
    @popcorn_flavor = PopcornFlavor.new 
    end
  end

  def create
    @popcorn_flavor = PopcornFlavor.create(popcorn_flavor_params) 
    redirect_to '/popcorn_flavors'    
  end

  def edit
    @popcorn_flavor = PopcornFlavor.find(params[:id])
    
  end

  def update
    @popcorn_flavor = PopcornFlavor.find(params[:id])
    @popcorn_flavor.update(popcorn_flavor_params)
    flash[:success] = "Your Popcorn Flavor is updated!"
    redirect_to '/popcorn_flavors'
    
  end

  def show
    
    @popcorn_flavor = PopcornFlavor.find(params[:id])
  end

  def destroy
    @popcorn_flavor = PopcornFlavor.find(params[:id])
    @popcorn_flavor.destroy
    flash[:warning] = "Popcorn Flavor Deleted"
    redirect_to "/"
  end

  private

  def popcorn_flavor_params
    return params.require(:popcorn_flavor).permit(:name, :photo, :description, :id)

  end
end
