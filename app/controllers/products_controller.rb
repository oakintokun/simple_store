
class ProductsController < ApplicationController
  # Load products and their categories together to prevent N+1 queries.
  def index
    @products = Product.includes(:category).all
  end

  # Load a single product and its category.
  def show
    @product = Product.includes(:category).find(params[:id])
  end
end
