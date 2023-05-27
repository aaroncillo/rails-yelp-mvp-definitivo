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
dishoom = {name: "Ddasdasdadd", address: "7 Boundary St, London E2 7JE", phone_number: "3232", category: "chinese"}
pizza_east =  {name: "Pafsdfsfsdasdizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "3123", category: "chinese"}
completo = {name: "completo", address: "7 Boundary St, London E2 7JE", phone_number: "3232", category: "chinese"}
pastelchoclo =  {name: "pastel choclo ", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "3123", category: "chinese"}
asado = {name: "asado", address: "7 Boundary St, London E2 7JE", phone_number: "3232", category: "chinese"}

[dishoom, pizza_east, completo, pastelchoclo, asado].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
