class TeacherAppreciationItemsController < ApplicationController
  def index
    @teacher_appreciation_items = TeacherAppreciationItem.all
  end

  def show
    @teacher_appreciation_item = TeacherAppreciationItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @teacher_appreciation_item = TeacherAppreciationItem.new
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @teacher_appreciation_item = TeacherAppreciationItem.create(item_params) 
    redirect_to '/teacher_appreciation_items'  
  end

  def edit
    @teacher_appreciation_item = TeacherAppreciationItem.find(params[:id])
  end

  def update
    @teacher_appreciation_item = TeacherAppreciationItem.find(params[:id])
    @teacher_appreciation_item.update(item_params)
    flash[:success] = "Item has been Updated!"
    redirect_to "/teacher_appreciation_items"
  end

  def destroy
    @teacher_appreciation_item = TeacherAppreciationItem.find(params[:id])
    @teacher_appreciation_item.destroy
    flash[:warning] = "Your item has been deleted!"
    redirect_to "/teacher_appreciation_items"
  end

  private

  def item_params
    return params.require(:teacher_appreciation_item).permit(:name, :photo, :description, :id)

  end
end
