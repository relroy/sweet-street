class OrdersController < ApplicationController

  def index
    if user_signed_in? && current_user.admin?
      @orders = Order.all
    else
      @orders = Order.where(:status => "purchased")
    end   
  end

  def show
    @order = Order.find(params[:id])
    
  end

  def new
    
  end

  def update
    #process credit card here!

    @order = Order.find(params[:id])
    @order.update(:status => "purchased", :total => @order.total)
    UserMailer.order_submission(@order).deliver
    
    flash[:info] = "Succesfully Submitted."
    redirect_to @order
  end


end
