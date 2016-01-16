class TinsController < ApplicationController
   def index
    @tins = Tin.all
    @tins = @tins.sort
  end

  def show
    @tin = Tin.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @tin = Tin.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @tin = Tin.create(item_params) 
    redirect_to '/tins'  
  end

  def edit
    @tin = Tin.find(params[:id])
  end

  def update
    @tin = Tin.find(params[:id])
    @tin.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/tins"
  end

  def destroy
    @tin = Tin.find(params[:id])
    @tin.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/tins"
  end

  private

  def item_params
    return params.require(:tin).permit(:name, :photo, :description, :description2, :description3, :description4, :description5, :description6, :description8, :description9, :description10, :description11, :description12, :description13, :description14, :description15, :description16, :id)

  end
end
