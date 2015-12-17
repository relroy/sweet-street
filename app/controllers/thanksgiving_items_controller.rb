class ThanksgivingItemsController < ApplicationController

  def index
    @thanksgiving_items = ThanksgivingItem.all
  end

  def show
    @thanksgiving_item = ThanksgivingItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @thanksgiving_item = ThanksgivingItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @thanksgiving_item = ThanksgivingItem.create(item_params) 
    redirect_to '/thanksgiving_items'  
  end

  def edit
    @thanksgiving_item = ThanksgivingItem.find(params[:id])
  end

  def update
    @thanksgiving_item = ThanksgivingItem.find(params[:id])
    @thanksgiving_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/thanksgiving_items"
  end

  def destroy
    @thanksgiving_item = ThanksgivingItem.find(params[:id])
    @thanksgiving_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/thanksgiving_items"
  end

  private

  def item_params
    return params.require(:thanksgiving_item).permit(:name, :photo, :description, :id)

  end
end