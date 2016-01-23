class FundraiserItemsController < ApplicationController
  

   def index   
    @fundraiser_items = FundraiserItem.all
    @carted_product = CartedProduct.new
    if 
    @order = Order.find_by(:user_id => current_user.id, :status => "cart")
    @carted_products = @order.carted_products
    $total_carted_products = 0
    @carted_products.each do |carted_product|
      $total_carted_products += carted_product.sm_bag_qty
      
    end
    end
  end

  def show
    @fundraiser_item = FundraiserItem.find(params[:id])
  end

  def new
    if user_signed_in? && current_user.admin?
    @fundraiser_item = FundraiserItem.new 
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
        @fundraiser_item = FundraiserItem.create(product_params) 
    redirect_to '/fundraiser_items'   
  end

  def edit
    if user_signed_in? && current_user.admin?
    @fundraiser_item = FundraiserItem.find(params[:id])
    else render :file => "/public/404.html", :status => 404
    end
  end

  def update
    @fundraiser_item = FundraiserItem.find(params[:id])
    @fundraiser_item.update(product_params) 
    # flash[:success] = "Your Whole Sale Product is updated!"
    redirect_to '/fundraiser_items'    
  end

  def destroy
    @fundraiser_item = FundraiserItem.find(params[:id])
    @fundraiser_item.destroy
    # flash[:warning] = "Wholesale Product Deleted"
     redirect_to "/fundraiser_items"
  end

  private 

    def product_params
    return params.require(:fundraiser_item).permit(:name, :photo, :sm_bag, :id)     
    end
end
