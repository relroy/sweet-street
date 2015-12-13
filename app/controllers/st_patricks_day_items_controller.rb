class StPatricksDayItemsController < ApplicationController
  def index
    @st_patricks_day_items = StPatricksDayItem.all
  end

  def show
    @st_patricks_day_item = StPatricksDayItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @st_patricks_day_item = StPatricksDayItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @st_patricks_day_item = StPatricksDayItem.create(item_params) 
    redirect_to '/st_patricks_day_items'  
  end

  def edit
    @st_patricks_day_item = StPatricksDayItem.find(params[:id])
  end

  def update
    @st_patricks_day_item = StPatricksDayItem.find(params[:id])
    @st_patricks_day_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/st_patricks_day_items"
  end

  def destroy
    @st_patricks_day_item = StPatricksDayItem.find(params[:id])
    @st_patricks_day_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/st_patricks_day_items"
  end

  private

  def item_params
    return params.require(:st_patricks_day_item).permit(:name, :photo, :description, :id)

  end
end
