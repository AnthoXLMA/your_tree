# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# require 'faker'
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# # Seed pour USER Booker
# Booker.create(name: "Bobby")
# Booker.create(name: "Michel")
# Booker.create(name: "Germain")

# # Seed pour USER Owner
# Owner.create(name: "Jack")
# Owner.create(name: "Johnson")
# Owner.create(name: "Ben")


# # Seed pour OWNER Tree
# Tree.create(name: "Baobab")
# Tree.create(name: "Chene")
# Tree.create(name: "Cactus")

# # Seed pour Rental
# puts 'Creating rentals...'
# baobab = Rental.new(name: "Baobab")
# baobab.save!
# cactus = Rental.new(name: "Cactus")
# cactus.save!
# puts 'Finished!'


# require 'faker'

# puts 'Creating 100 fake users...'
# 100.times do
#   booker = User.new(
#     name:    Faker::Company.name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#   )
#   booker.save!
# end
# puts 'Finished!'
