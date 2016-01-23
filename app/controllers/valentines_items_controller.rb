class ValentinesItemsController < ApplicationController
  def index
    @valentines_items = ValentinesItem.all
  end

  def show
    @valentines_item = ValentinesItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @valentines_item = ValentinesItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @valentines_item = ValentinesItem.create(item_params) 
    redirect_to '/valentines_items'  
  end

  def edit
    @valentines_item = ValentinesItem.find(params[:id])
  end

  def update
    @valentines_item = ValentinesItem.find(params[:id])
    @valentines_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/valentines_items"
  end

  def destroy
    @valentines_item = ValentinesItem.find(params[:id])
    @valentines_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/valentines_items"
  end

  private

  def item_params
    return params.require(:valentines_item).permit(:name, :photo, :description, :id)

  end
end
