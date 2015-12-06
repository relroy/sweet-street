class ProductsController < ApplicationController
  def index
    @products = Product.all
    @layouts = Layout.all
    
  end

  def new
    if user_signed_in? && current_user.admin?
    @product = Product.new 
    else render :file => "/public/404.html", :status => 404
    end
  end

  def create
    @product = Product.create(product_params) 
    redirect_to '/products'
    
  end

  def edit
    if user_signed_in? && current_user.admin?
    @product = Product.find(params[:id])
    else render :file => "/public/404.html", :status => 404
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
     flash[:success] = "Your Product is updated!"
    redirect_to '/products'
    
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:warning] = "Product Deleted"
    redirect_to "/"
  end

  def aboutus
    
    
  end

  def festivals
    
  end

  def storepic
    
  end

  # def search
  #   @products = Product.search(params[:q])
    
  # end

  private

  def product_params
    return params.require(:product).permit(:name, :photo, :description, :special, :id)

  end

end
