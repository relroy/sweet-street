class ProfessionalAssistantItemsController < ApplicationController
  def index
    @professional_assistant_items = ProfessionalAssistantItem.all
  end

  def show
    @professional_assistant_item = ProfessionalAssistantItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @professional_assistant_item = ProfessionalAssistantItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @professional_assistant_item = ProfessionalAssistantItem.create(item_params) 
    redirect_to '/professional_assistant_items'  
  end

  def edit
    @professional_assistant_item = ProfessionalAssistantItem.find(params[:id])
  end

  def update
    @professional_assistant_item = ProfessionalAssistantItem.find(params[:id])
    @professional_assistant_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/professional_assistant_items"
  end

  def destroy
    @professional_assistant_item = ProfessionalAssistantItem.find(params[:id])
    @professional_assistant_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/professional_assistant_items"
  end

  private

  def item_params
    return params.require(:professional_assistant_item).permit(:name, :photo, :description, :id)

  end
end
