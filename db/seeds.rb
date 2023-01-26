# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "078463636838"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "033773636838"}
taro = {name: "Taro", address: "43 Brewer Street, London SW7 6YH", category: "japanese", phone_number: "078463636838"}
bone_daddies = {name: "Bone Dannies", address: "6 Cool Street, London SW6 7GH", category: "japanese", phone_number: "0784846838"}
brew_house = {name: "Brew House", address: "1 Hoxton, London NE4 7GD", category: "belgian", phone_number: "02083636838"}

[dishoom, pizza_east, taro, bone_daddies, brew_house].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
