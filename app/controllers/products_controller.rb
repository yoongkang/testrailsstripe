class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      flash.now[:error] = @product.errors
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :price)
  end
end
