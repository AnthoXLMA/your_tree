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