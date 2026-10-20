
class Product < ApplicationRecord
  # Each product belongs to one category.
  belongs_to :category

  # Validate the required product information.
  validates :title, presence: true
  validates :price, presence: true
  validates :stock_quantity, presence: true
end
