class GrandParentsDayItemsController < ApplicationController
  def index
    @grand_parents_day_items = GrandParentsDayItem.all
  end

  def show
    @grand_parents_day_item = GrandParentsDayItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @grand_parents_day_item = GrandParentsDayItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @grand_parents_day_item = GrandParentsDayItem.create(item_params) 
    redirect_to '/grand_parents_day_items'  
  end

  def edit
    @grand_parents_day_item = GrandParentsDayItem.find(params[:id])
  end

  def update
    @grand_parents_day_item = GrandParentsDayItem.find(params[:id])
    @grand_parents_day_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/grand_parents_day_items"
  end

  def destroy
    @grand_parents_day_item = GrandParentsDayItem.find(params[:id])
    @grand_parents_day_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/grand_parents_day_items"
  end

  private

  def item_params
    return params.require(:grand_parents_day_item).permit(:name, :photo, :description, :id)

  end
end
