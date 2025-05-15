# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleaning database"
Car.destroy_all
Owner.destroy_all

puts "creating Owners"
Owner.create(nickname: "Bobski")
Owner.create(nickname: "Terry")
Owner.create(nickname: "Gazza")

puts "creating cars"
Car.create!(brand: "Fiat", model: "500", year: 2017, fuel:"petrol", owner: Owner.find_by(nickname: "Bobski"))
Car.create!(brand: "Toyota", model: "Aygo", year: 2016, fuel:"petrol", owner: Owner.find_by(nickname: "Terry"))
Car.create!(brand: "Mercedes", model: "GLA", year: 2018, fuel:"petrol", owner: Owner.find_by(nickname: "Gazza"))

puts "finished seeding"
