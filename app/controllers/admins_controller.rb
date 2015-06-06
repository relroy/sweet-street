class AdminsController < ApplicationController
  def index
    @products = Product.all
    
  end

  def new
    @product = Product.new
    
    
  end

  def create  

  end

  def update
    
  end

end
