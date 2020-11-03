# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning The DB"
Restaurant.destroy_all

puts "Creating restaurants"

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "01 47 32 91 71", category: "chinese" }
pizza_east = { name: "Pizza East", address: "Via Roma, Roma E1 6PQ", phone_number: "01 47 28 32 87", category: "italian" }
luna_lusa = { name: "Luna Lusa", address: "Kamoon 3, Dubai E1 6PQ", phone_number: "01 32 45 56 97", category: "french" }
taikun = { name: "Taikun", address: "Downtown Boulevard, Dubai E1 6PQ", phone_number: "01 32 33 22 97", category: "japanese" }
la_belle_frite = { name: "La Belle Frite", address: "Rue du Manenkenpis, Bruxelles E1 6PQ", phone_number: "01 32 76 22 97", category: "belgian" }

[dishoom, pizza_east, luna_lusa, taikun, la_belle_frite].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

