
require "csv"

# Remove existing products before importing the CSV data.
Product.delete_all
Category.delete_all

# Locate the CSV file inside the db folder.
csv_file = Rails.root.join("db", "products.csv")

# Read each CSV row using its column headings.
CSV.foreach(csv_file, headers: true) do |row|
  # Find an existing category or create a new one.
  category = Category.find_or_create_by!(
    name: row["category"]
  )

  # Create a product associated with its category.
  Product.create!(
    title: row["name"],
    description: row["description"],
    price: row["price"],
    stock_quantity: row["stock quantity"],
    category: category
  )
end

# Display the number of records imported.
puts "Successfully imported #{Product.count} products."
puts "Successfully created #{Category.count} categories."
