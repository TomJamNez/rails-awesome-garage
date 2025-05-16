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
Car.create!(brand: "Chevrolet", model: "Corvette C6", year: 2017, fuel:"petrol", owner: Owner.find_by(nickname: "Bobski"), image_url:"https://upload.wikimedia.org/wikipedia/en/8/82/Lightning_McQueen.png")
Car.create!(brand: "Hudson", model: "Hornet", year: 1951, fuel:"diesel", owner: Owner.find_by(nickname: "Terry"), image_url:"https://static.wikia.nocookie.net/worldofcarsdrivein/images/6/61/Fab_Hudson_Hornet.png/revision/latest?cb=20250311221246")
Car.create!(brand: "Harvester", model: "L170", year: 1957, fuel:"petrol", owner: Owner.find_by(nickname: "Gazza"), image_url:"https://upload.wikimedia.org/wikipedia/en/f/f7/Mater_%28Cars%29.png")

puts "finished seeding"
