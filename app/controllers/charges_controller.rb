class ChargesController < ApplicationController

def new



end

def create
  # Amount in cents
  @order = Order.find_by(status: "cart", user_id: current_user.id)
  @user = User.find_by(id: current_user.id)
  

  customer = Stripe::Customer.create(
    :email => current_user.email,
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => (@order.total_with_shipping * 100).to_i,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

  @order.update(:status => "purchased", :total => (@order.total_with_shipping))

  UserMailer.order_submission(@order).deliver
  UserMailer.order_confirmation(@order).deliver
    flash[:info] = "Succesfully Submitted."

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to charges_path
end

end
