# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# Seed pour USER
puts "cleaning DB"
Rental.delete_all
Tree.delete_all
User.delete_all

puts 'Creating users...'
marco = User.new(
  first_name: "Marco",
  last_name: "Dupont",
  email:"Marco@example.com",
  password: "Hello2645"
  )
marco.save!

jean = User.new(
  first_name: "Jean",
  last_name:"Bourvil",
  email:"Jean@example.com",
  password: "Helilo285"
  )
jean.save!

bill = User.new(
  first_name: "Bill",
  last_name: "Withers",
  email:"Bill@example.com",
  password: "Hel285"
  )
bill.save!


# Seeding Trees
puts 'Creating trees...'
baobab = Tree.new(
  name: "Baobab",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: marco.id
  )
baobab.save!


cactus = Tree.new(
  name: "Cactus",
  species: "Desert Tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: jean.id
  )
cactus.save!

puts 'Finished!'


# Seeding Rentals
puts 'Creating Rentals...'
cactus_loc = Rental.new(
  start_on: Time.now,
  end_on: Time.now + 10.days,
  total_price: "230",
  status: "free",
  user_id: jean.id,
  tree_id: cactus.id
  )
cactus_loc.save!

# Seeding Rentals
# 5.times do
#   new_rental = Rental.new(
#     user_id: Faker::IDNumber.valid,
#     tree_id: Faker::Name.name,
#     start_on: Faker::Date.between(from: 2.days.ago, to: Date.today),
#     end_on: Faker::Date.between(from: 2.days.ago, to: Date.today),
#     total_price: Faker::Number.decimal(l_digits: 2),
#     )
#   new_rental.save!
# end

#Seeding Users
# 5.times do
#   new_user = User.new(
#     first_name: Faker::Name.first_name,
#     email: Faker::Internet.email,
#     phone_number: Faker::PhoneNumber.phone_number,
#     password: Faker::Number.number(digits: 10),
#   )
#   new_user.save!
# end

#Seeding Trees
# 5.times do
#   new_tree = Tree.new(
#     name: Faker::Name.name,
#     user_id: Faker::IDNumber.valid,
#     description: Faker::Lorem.paragraph(sentence_count: 2),
#     species: Faker::JapaneseMedia::DragonBall.character,
#   )
#   new_tree.save!
# end


# # Seed pour Tree
# puts 'Creating trees...'
# new_tree = Tree.new(name: "Bonzaï", description: "cute little tree", user_id:"")
# new_tree.save!

# puts 'Creating rentals...'
# new_rental = Rental.new(start_on: "20200304", end_on:"20200312", total_price: "230")
# new_rental.save!

# Tree.create(name: "Chene")
# Tree.create(name: "Cactus")

# Seeding Trees
# puts 'Creating rentals...'
# baobab = Tree.new(name: "Baobab")
# baobab.save!
# cactus = Tree.new(name: "Cactus")
# cactus.save!
# puts 'Finished!'

# require "faker"
# # TODO: Write a seed to insert 100 posts in the database
# 100.times do
#   post = Post.new(
#     title: Faker::Commerce.product_name,
#     url: Faker::Internet.url,
#     votes: (0..1000).to_a.sample
#   )
#   post.save
# end
