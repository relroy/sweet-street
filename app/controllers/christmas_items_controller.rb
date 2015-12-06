class ChristmasItemsController < ApplicationController
  def index
    @christmas_items = ChristmasItem.all
  end

  def show
    @christmas_item = ChristmasItem.find(params[:id])
  end

  def new
    @christmas_item = ChristmasItem.new
  end

  def create
    @christmas_item = ChristmasItem.create(item_params) 
    redirect_to '/christmas_items'  
  end

  def edit
    @christmas_item = ChristmasItem.find(params[:id])
  end

  def update
    @christmas_item = ChristmasItem.find(params[:id])
    @christmas_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/christmas_items"
  end

  def destroy
    @christmas_item.find(params[:id])
    @christmas_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/christmas_items"
  end

  private

  def item_params
    return params.require(:christmas_item).permit(:name, :photo, :description, :id)

  end
end
