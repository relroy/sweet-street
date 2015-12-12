class SweetestDayItemsController < ApplicationController
  def index
    @sweetest_day_items = SweetestDayItem.all
  end

  def show
    @sweetest_day_item = SweetestDayItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @sweetest_day_item = SweetestDayItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @sweetest_day_item = SweetestDayItem.create(item_params) 
    redirect_to '/sweetest_day_items'  
  end

  def edit
    @sweetest_day_item = SweetestDayItem.find(params[:id])
  end

  def update
    @sweetest_day_item = SweetestDayItem.find(params[:id])
    @sweetest_day_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/sweetest_day_items"
  end

  def destroy
    @sweetest_day_item = SweetestDayItem.find(params[:id])
    @sweetest_day_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/sweetest_day_items"
  end

  private

  def item_params
    return params.require(:sweetest_day_item).permit(:name, :photo, :description, :id)

  end
end
