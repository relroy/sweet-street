class EasterItemsController < ApplicationController
  def index
    @easter_items = EasterItem.all
  end

  def show
    @easter_item = EasterItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @easter_item = EasterItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @easter_item = EasterItem.create(item_params) 
    redirect_to '/easter_items'  
  end

  def edit
    @easter_item = EasterItem.find(params[:id])
  end

  def update
    @easter_item = EasterItem.find(params[:id])
    @easter_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/easter_items"
  end

  def destroy
    @easter_item = EasterItem.find(params[:id])
    @easter_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/easter_items"
  end

  private

  def item_params
    return params.require(:easter_item).permit(:name, :photo, :description, :id)

  end
end
