class ProductsController < ApplicationController
  def index
    @products = Product.all
    
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    redirect_to '/products'
    
  end

  def edit
    @product = Product.find(params[:id])
    
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
    return params.require(:product).permit(:name, :photo, :description,:id)

  end

end
