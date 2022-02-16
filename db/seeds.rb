# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Restaurant.destroy_all
Review.destroy_all

p 'Je lance'
10.times { Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: Restaurant::CATEGORIES.sample, phone_number: Faker::PhoneNumber.cell_phone) }
p 'Restau créée'


50.times { Review.create(restaurant: Restaurant.all.sample, content: Faker::Restaurant.review, rating: rand(1..5)) }
