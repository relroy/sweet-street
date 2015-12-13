class HalloweenItemsController < ApplicationController
  def index
    @halloween_items = HalloweenItem.all
  end

  def show
    @halloween_item = HalloweenItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @halloween_item = HalloweenItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @halloween_item = HalloweenItem.create(item_params) 
    redirect_to '/halloween_items'  
  end

  def edit
    @halloween_item = HalloweenItem.find(params[:id])
  end

  def update
    @halloween_item = HalloweenItem.find(params[:id])
    @halloween_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/halloween_items"
  end

  def destroy
    @halloween_item = HalloweenItem.find(params[:id])
    @halloween_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/halloween_items"
  end

  private

  def item_params
    return params.require(:halloween_item).permit(:name, :photo, :description, :id)

  end
end
