class Product < ApplicationRecord
  # A product must have a title, price, and stock quantity.
  validates :title, presence: true
  validates :price, presence: true
  validates :stock_quantity, presence: true
end
