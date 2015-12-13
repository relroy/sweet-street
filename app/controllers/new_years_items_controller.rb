class NewYearsItemsController < ApplicationController
 def index
    @new_years_items = NewYearsItem.all
  end

  def show
    @new_years_item = NewYearsItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @new_years_item = NewYearsItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @new_years_item = NewYearsItem.create(item_params) 
    redirect_to '/new_years_items'  
  end

  def edit
    @new_years_item = NewYearsItem.find(params[:id])
  end

  def update
    @new_years_item = NewYearsItem.find(params[:id])
    @new_years_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/new_years_items"
  end

  def destroy
    @new_years_item = NewYearsItem.find(params[:id])
    @new_years_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/new_years_items"
  end

  private

  def item_params
    return params.require(:new_years_item).permit(:name, :photo, :description, :id)

  end
end
