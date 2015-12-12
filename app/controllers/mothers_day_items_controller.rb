class MothersDayItemsController < ApplicationController
  def index
    @mothers_day_items = MothersDayItem.all
  end

  def show
    @mothers_day_item = MothersDayItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @mothers_day_item = MothersDayItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @mothers_day_item = MothersDayItem.create(item_params) 
    redirect_to '/mothers_day_items'  
  end

  def edit
    @mothers_day_item = MothersDayItem.find(params[:id])
  end

  def update
    @mothers_day_item = MothersDayItem.find(params[:id])
    @mothers_day_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/mothers_day_items"
  end

  def destroy
    @mothers_day_item = MothersDayItem.find(params[:id])
    @mothers_day_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/mothers_day_items"
  end

  private

  def item_params
    return params.require(:mothers_day_item).permit(:name, :photo, :description, :id)

  end
end
