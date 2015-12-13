class IndependenceDayItemsController < ApplicationController
  def index
    @independence_day_items = IndependenceDayItem.all
  end

  def show
    @independence_day_item = IndependenceDayItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @independence_day_item = IndependenceDayItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @independence_day_item = IndependenceDayItem.create(item_params) 
    redirect_to '/independence_day_items'  
  end

  def edit
    @independence_day_item = IndependenceDayItem.find(params[:id])
  end

  def update
    @independence_day_item = IndependenceDayItem.find(params[:id])
    @independence_day_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/independence_day_items"
  end

  def destroy
    @independence_day_item = IndependenceDayItem.find(params[:id])
    @independence_day_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/independence_day_items"
  end

  private

  def item_params
    return params.require(:independence_day_item).permit(:name, :photo, :description, :id)

  end
end
