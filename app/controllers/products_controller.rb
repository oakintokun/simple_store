
class ProductsController < ApplicationController
  # Retrieve all products from the database for the index page.
  def index
    @products = Product.all
  end
end