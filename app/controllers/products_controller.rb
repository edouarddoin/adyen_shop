class ProductsController < ApplicationController
  @products = []
  skip_before_action :authenticate_user!, only: :index

  def new
    Product.new
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :stock, :sku)
  end
end
