class OrdersController < ApplicationController

  def index

    if user_signed_in? && current_user.admin?
      @orders = Order.all
    else
      @orders = Order.where(:status => "purchased", :user_id => current_user.id)
    end   
  end

  def show
    @order = Order.find(params[:id])

    if $total_carted_products < 50
     flash[:error] = "------------------------------------------------------------------------------------YOU MUST ORDER IN QUANTITIES OF 50 BAGS---------------------------------------------------------------"
      redirect_to :back
    elsif $total_carted_products > 50 && $total_carted_products < 100
     flash[:error] = "------------------------------------------------------------------------------------YOU MUST ORDER IN QUANTITIES OF 50 BAGS---------------------------------------------------------------"
     redirect_to :back
   elsif $total_carted_products > 100 && $total_carted_products < 150
     flash[:error] = "------------------------------------------------------------------------------------YOU MUST ORDER IN QUANTITIES OF 50 BAGS---------------------------------------------------------------"
     redirect_to :back
   elsif $total_carted_products > 150 && $total_carted_products < 200
     flash[:error] = "------------------------------------------------------------------------------------YOU MUST ORDER IN QUANTITIES OF 50 BAGS---------------------------------------------------------------"
     redirect_to :back
   elsif $total_carted_products > 200 && $total_carted_products < 250
     flash[:error] = "------------------------------------------------------------------------------------YOU MUST ORDER IN QUANTITIES OF 50 BAGS---------------------------------------------------------------"
     redirect_to :back
   elsif $total_carted_products > 250 && $total_carted_products < 300
     flash[:error] = "------------------------------------------------------------------------------------YOU MUST ORDER IN QUANTITIES OF 50 BAGS---------------------------------------------------------------"
     redirect_to :back
   elsif $total_carted_products > 300 && $total_carted_products < 350
     flash[:error] = "------------------------------------------------------------------------------------YOU MUST ORDER IN QUANTITIES OF 50 BAGS---------------------------------------------------------------"
     redirect_to :back
   elsif $total_carted_products > 350 && $total_carted_products < 400
     flash[:error] = "------------------------------------------------------------------------------------YOU MUST ORDER IN QUANTITIES OF 50 BAGS---------------------------------------------------------------"
     redirect_to :back
   elsif $total_carted_products > 400 && $total_carted_products < 450
     flash[:error] = "------------------------------------------------------------------------------------YOU MUST ORDER IN QUANTITIES OF 50 BAGS---------------------------------------------------------------"
     redirect_to :back
   elsif $total_carted_products > 450 && $total_carted_products < 500
     flash[:error] = "------------------------------------------------------------------------------------YOU MUST ORDER IN QUANTITIES OF 50 BAGS---------------------------------------------------------------"
     redirect_to :back
   elsif $total_carted_products > 500 
     flash[:error] = "------------------------------------------------------------------------------------Please contact Sweet Street directly for such a Large order---------------------------------------------------------------"
     redirect_to :back
    end
    
  end

  def new
    
  end

  def update
    #process credit card here!

    @order = Order.find(params[:id])
    @order.update(:status => "purchased", :total => @order.total)
    UserMailer.order_submission(@order).deliver
    
    # flash[:info] = "Succesfully Submitted."
    redirect_to @order
  end

  def destroy
    @order = Order.find(params[:id])
     @order.destroy
     flash[:warning] = "Order Deleted"
     redirect_to "/orders"
    
  end


end
