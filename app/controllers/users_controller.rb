class UsersController < ApplicationController
  def index
    if user_signed_in? && current_user.admin?
    # @users = User.search(params[:search])
    # @users = @users.sort_by do |i|
    #   i[:group_id] 

    @users = User.all
    
    else render :file => "/public/404.html", :status => 404
    end
    
  end

  def new
   @user = User.new
    
  end

  def create
   @user = User.create(params[:user])
    
  end

  def show
    @user = User.find(params[:id])
    
  end

  def edit
    if user_signed_in? && current_user.admin?
      @user = User.find(params[:id])
      else render :file => "/public/404.html", :status => 404
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update({:ws_cust => params[:ws_cust], :email => params[:email]})
    flash[:info] = "Update Complete"
    redirect_to "/users"
    
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:warning] = "User Deleted"
    redirect_to "/users"
    
  end
end
