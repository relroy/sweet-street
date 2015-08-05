class OrdersController < ApplicationController

  def index
    @orders = Order.all
    
  end

  def show
    @order = Order.find(params[:id])
    
  end

  def update
    #process credit card here!

    @order = Order.find(params[:id])
    @order.update(:status => "purchased", :total => @order.total_price)
  end


end
