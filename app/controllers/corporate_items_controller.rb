class CorporateItemsController < ApplicationController
  def index
    @corporate_items = CorporateItem.all
  end

  def show
    @corporate_item = CorporateItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @corporate_item = CorporateItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @corporate_item = CorporateItem.create(item_params) 
    redirect_to '/corporate_items'  
  end

  def edit
    @corporate_item = CorporateItem.find(params[:id])
  end

  def update
    @corporate_item = CorporateItem.find(params[:id])
    @corporate_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/corporate_items"
  end

  def destroy
    @corporate_item = CorporateItem.find(params[:id])
    @corporate_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/corporate_items"
  end

  private

  def item_params
    return params.require(:corporate_item).permit(:name, :photo, :description, :id)

  end
end
