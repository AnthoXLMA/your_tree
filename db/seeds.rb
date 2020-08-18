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

sapin = Tree.new(
  name: "sapin",
  species: "christmas tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: bill.id
  )
sapin.save!

pin = Tree.new(
  name: "pin",
  species: "forest tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: marco.id
  )
pin.save!

mimosa = Tree.new(
  name: "mimosa",
  species: "summer tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: jean.id
  )
mimosa.save!

peuplier = Tree.new(
  name: "peuplier",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: bill.id
  )
peuplier.save!

chene = Tree.new(
  name: "chene",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: marco.id
  )
chene.save!

platane = Tree.new(
  name: "platane",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: jean.id
  )
platane.save!

acacia = Tree.new(
  name: "acacia",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: bill.id
  )
acacia.save!

bouleau = Tree.new(
  name: "bouleau",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: marco.id
  )
bouleau.save!

bougainvillier = Tree.new(
  name: "bougainvillier",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: jean.id
  )
bougainvillier.save!

palmier = Tree.new(
  name: "palmier",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: bill.id
  )
palmier.save!

mandarinier = Tree.new(
  name: "mandarinier",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: marco.id
  )
mandarinier.save!

pommier = Tree.new(
  name: "pommier",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: jean.id
  )
pommier.save!

citronnier = Tree.new(
  name: "citronnier",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: bill.id
  )
citronnier.save!

cerisier = Tree.new(
  name: "cerisier",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: marco.id
  )
cerisier.save!

figuier = Tree.new(
  name: "figuier",
  species: "african tree",
  address: "address",
  size: "size",
  weight: "weight",
  description: "description",
  user_id: jean.id
  )
figuier.save!

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

# Seeding Trees
# puts 'Creating rentals...'
# baobab = Tree.new(name: "Baobab")
# baobab.save!
# cactus = Tree.new(name: "Cactus")
# cactus.save!
# puts 'Finished!'
puts 'Finished!'
