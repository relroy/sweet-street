class LayoutsController < ApplicationController
  def index
   
    @layouts = Layout.all
    
  end

  def new
    if user_signed_in? && current_user.admin?
    @layout = Layout.new 
    end
  end

  def create
    @layout = Layout.create(layout_params) 
    redirect_to '/products'
    
  end

  def edit
    @layout = Layout.find(params[:id])
    
  end

  def update
    @layout = Layout.find(params[:id])
    @layout.update(layout_params)
      flash[:success] = "Your Layout is updated!"
    redirect_to '/layouts'
    
  end

  def show
    @layout = Layout.find(params[:id])
  end

  private

  def layout_params
    return params.require(:layout).permit(:text, :photo, :active, :id)

  end

end
