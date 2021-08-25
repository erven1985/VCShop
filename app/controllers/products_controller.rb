class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end

  def new
  end

  def create 
    @product = Product.new product_params
    if @product.save
      redirect_to product_path(@product), :notice => "Success. Product was created."
    else
      render :new, :alert => "Please see errors"
    end
  end

  def edit
    # home work
  end

  def update 

  end

  def destroy 
    
  end

  def show
    @product = Product.find(params[:id])
  end

  protected 

  def product_params 
    params.require(:product).permit(:title, :description, :price, :amount)
  end

end
