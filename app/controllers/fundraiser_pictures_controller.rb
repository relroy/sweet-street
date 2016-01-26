class FundraiserPicturesController < ApplicationController
  def index
    @fundraiser_pictures = FundraiserPicture.all
  end

  def show
    @fundraiser_picture = FundraiserPicture.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @fundraiser_picture = FundraiserPicture.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @fundraiser_picture = FundraiserPicture.create(item_params) 
    redirect_to '/fundraiser_pictures'  
  end

  def edit
    @fundraiser_picture = FundraiserPicture.find(params[:id])
  end

  def update
    @fundraiser_picture = FundraiserPicture.find(params[:id])
    @fundraiser_picture.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/fundraiser_pictures"
  end

  def destroy
    @fundraiser_picture = FundraiserPicture.find(params[:id])
    @fundraiser_picture.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/fundraiser_pictures"
  end

  private

  def item_params
    return params.require(:fundraiser_picture).permit(:name, :photo, :description, :id)

  end
end
