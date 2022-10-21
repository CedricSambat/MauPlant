# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
GardenPlant.destroy_all
Plant.destroy_all
Garden.destroy_all
User.destroy_all
puts "starting seeding"

puts "cleaning database"

plant1 = Plant.create(name: "mango", description: "klsdvklsn", category:"fruit")
plant1.save!

plant2 = Plant.create(name: "carrot", description: "klsdvklsn", category:"vegetable")
plant2.save!

plant3 = Plant.create(name: "orchid", description: "klsdvklsn", category:"hornamental")
plant3.save!

plant4 = Plant.create(name: "rose", description: "klsdvklsn", category:"hornamental")
plant4.save!
