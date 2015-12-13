class FathersDayItemsController < ApplicationController
  def index
    @fathers_day_items = FathersDayItem.all
  end

  def show
    @fathers_day_item = FathersDayItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @fathers_day_item = FathersDayItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @fathers_day_item = FathersDayItem.create(item_params) 
    redirect_to '/fathers_day_items'  
  end

  def edit
    @fathers_day_item = FathersDayItem.find(params[:id])
  end

  def update
    @fathers_day_item = FathersDayItem.find(params[:id])
    @fathers_day_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/fathers_day_items"
  end

  def destroy
    @fathers_day_item = FathersDayItem.find(params[:id])
    @fathers_day_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/fathers_day_items"
  end

  private

  def item_params
    return params.require(:fathers_day_item).permit(:name, :photo, :description, :id)

  end
end
