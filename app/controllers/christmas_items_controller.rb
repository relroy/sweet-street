class ChristmasItemsController < ApplicationController
  def index
    @christmas_items = ChristmasItem.all
  end

  def show
    @christmas_item = ChristmasItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @christmas_item = ChristmasItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @christmas_item = ChristmasItem.create(item_params) 
    redirect_to '/christmas_items'  
  end

  def edit
    @christmas_item = ChristmasItem.find(params[:id])
  end

  def update
    @christmas_item = ChristmasItem.find(params[:id])
    @christmas_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/christmas_items"
  end

  def destroy
    @christmas_item = ChristmasItem.find(params[:id])
    @christmas_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/christmas_items"
  end

  private

  def item_params
    return params.require(:christmas_item).permit(:name, :photo, :description, :id)

  end
end
