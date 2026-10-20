
require "faker"

# Remove existing products to prevent duplicates when reseeding.
Product.destroy_all

# Generate 676 sample products using Faker.
676.times do
  Product.create!(
    title: Faker::Commerce.product_name,
    price: Faker::Commerce.price(range: 5.0..500.0),
    stock_quantity: Faker::Number.between(from: 0, to: 100)
  )
end

# Display the total number of products created.
puts "Successfully created #{Product.count} products."
