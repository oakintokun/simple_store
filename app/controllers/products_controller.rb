
class ProductsController < ApplicationController
  # Retrieve all products for the index page.
  def index
    @products = Product.all
  end

  # Find the individual product selected by the user.
  def show
    @product = Product.find(params[:id])
  end
end
