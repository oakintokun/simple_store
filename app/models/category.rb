
class Category < ApplicationRecord
  # A category can contain multiple products.
  has_many :products
end
