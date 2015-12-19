class BossDayItemsController < ApplicationController
  def index
    @boss_day_items = BossDayItem.all
  end

  def show
    @boss_day_item = BossDayItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @boss_day_item = BossDayItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @boss_day_item = BossDayItem.create(item_params) 
    redirect_to '/boss_day_items'  
  end

  def edit
    @boss_day_item = BossDayItem.find(params[:id])
  end

  def update
    @boss_day_item = BossDayItem.find(params[:id])
    @boss_day_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/boss_day_items"
  end

  def destroy
    @boss_day_item = BossDayItem.find(params[:id])
    @boss_day_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/boss_day_items"
  end

  private

  def item_params
    return params.require(:boss_day_item).permit(:name, :photo, :description, :id)

  end
end
