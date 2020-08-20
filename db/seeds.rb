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
  password: "password",
  phone_number: "0123456789"
  )
marco.photo.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar.png')), filename: 'avatar.png')
marco.save!

jean = User.new(
  first_name: "Jean",
  last_name:"Bourvil",
  email:"Jean@example.com",
  password: "password",
  phone_number: "1234567890"
  )
jean.photo.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar.png')), filename: 'avatar.png')

jean.save!

bill = User.new(
  first_name: "Bill",
  last_name: "Withers",
  email:"Bill@example.com",
  password: "password",
  phone_number: "0023456789"
  )
bill.photo.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar.png')), filename: 'avatar.png')
bill.save!


# Seeding Trees
puts 'Creating trees...'
baobab = Tree.new(
  name: "Baobab",
  species: "African tree",
  address: "28 rue de Raymond Poincaré, 44300 Nantes",
  size: "small",
  weight: "66lb",
  description: "A typical tree of dry tropical Africa, the baobab is the emblem of Senegal. This giant of the African savannas cannot survive in the open ground in mainland France. On the other hand, it is possible to welcome a baobab at home because a young plant can be grown as an indoor plant!",
  price: 5,
  user_id: marco.id
  )
baobab.photo.attach(io: File.open(Rails.root.join('db/fixtures/trees/Baobab.jpeg')), filename: 'Baobab.jpeg')
baobab.save!


cactus = Tree.new(
  name: "Cactus",
  species: "Desert Tree",
  address: "51 rue La Boétie, 75016 Paris",
  size: "medium",
  weight: "440lb",
  description: "The cactus belongs to the family Cactaceae, which encompasses almost 2,000 different species, according to the Aggie Horticulture website of Texas A&M University. The cactus is an iconic representation of desert plant life, known for its prickly needles and often towering height.",
  price: 5,
  user_id: marco.id
  )
cactus.photo.attach(io: File.open(Rails.root.join('db/fixtures/trees/Cactus.jpeg')), filename: 'Cactus.jpeg')
cactus.save!

sapin = Tree.new(
  name: "Sapin",
  species: "Christmas tree",
  address: "54 Chemin Des Bateliers, 49100 Angers",
  size: "large",
  weight: "1322lb",
  description: "The fir trees are trees conifers of the genus Abies originating in temperate regions of the northern hemisphere. They are part of the Pinaceae family . They are recognizable by the way the needles attach to the shank, their shapes which differ from spruce, and their erect cones which disintegrate at maturity.",
  price: 10,
  user_id: marco.id
  )
sapin.photo.attach(io: File.open(Rails.root.join('db/fixtures/trees/Sapin.jpeg')), filename: 'Sapin.jpeg')
sapin.save!

pin = Tree.new(
  name: "Pin",
  species: "Forest tree",
  address: "22 rue du minage, 17000 La Rochelle",
  size: "large",
  weight: "1322lb",
  description: "A pine is any conifer in the genus Pinus of the family Pinaceae. Pinus is the sole genus in the subfamily Pinoideae. The Plant List compiled by the Royal Botanic Gardens, Kew and Missouri Botanical Garden accepts 126 species names of pines as current, together with 35 unresolved species and many more synonyms. Pine may also refer to the lumber derived from pine trees; pine is one of the more extensively used types of wood used as lumber.",
  price: 10,
  user_id: marco.id
  )
pin.photo.attach(io: File.open(Rails.root.join('db/fixtures/trees/Pin.jpeg')), filename: 'Pin.jpeg')
pin.save!

mimosa = Tree.new(
  name: "Mimosa",
  species: "Summer tree",
  address: "79 boulevard de la Liberation, 13014 Marseille",
  size: "medium",
  weight: "440lb",
  description: "Mimosa is a genus of trees of the Mimosaceae familyaccording to the classical classification of Cronquist (1981) or of the great family of Fabaceae and of the subfamily of Mimosoideae according to the phylogenetic classification. It includes nearly 400 species.",
  price: 5,
  user_id: marco.id
  )
mimosa.photo.attach(io: File.open(Rails.root.join('db/fixtures/trees/Mimosa.jpeg')), filename: 'Mimosa.jpeg')
mimosa.save!

chene = Tree.new(
  name: "Chêne",
  species: "Forest tree",
  address: "3 rue des Minimes, 37926 Tours",
  size: "large",
  weight: "1322lb",
  description: "Oak is the vernacular name for many species of trees and shrubs belonging to the genus Quercus , and some related genera of the Fagaceae family , notably Cyclobalanopsis and Lithocarpus .",
  price: 10,
  user_id: marco.id
  )
chene.photo.attach(io: File.open(Rails.root.join('db/fixtures/trees/Chene.jpeg')), filename: 'Chene.jpeg')
chene.save!

acacia = Tree.new(
  name: "Acacia",
  species: "African tree",
  address: "Avenue de la République, 83056 Toulon",
  size: "large",
  weight: "1322lb",
  description: "Acacia, commonly known as the wattles or acacias, is a large genus of shrubs and trees in the subfamily Mimosoideae of the pea family Fabaceae. Initially, it comprised a group of plant species native to Africa and Australia.",
  price: 10,
  user_id: marco.id
  )
acacia.photo.attach(io: File.open(Rails.root.join('db/fixtures/trees/Acacia.jpeg')), filename: 'Acacia.jpeg')
acacia.save!

palmier = Tree.new(
  name: "Palmier",
  species: "Tropical tree",
  address: "Promenade des Anglais, 06000 Nice",
  size: "large",
  weight: "1322lb",
  description: "A palm tree is a plant of the Arecaceae botanical family , well known by date palms and coconut palms . Palm trees take the form of perennial lianas , shrubs and trees . They are the only members of the only Arecaceae family in the order Arecales. They grow in hot climates.",
  price: 10,
  user_id: marco.id
  )
palmier.photo.attach(io: File.open(Rails.root.join('db/fixtures/trees/Palmier.jpeg')), filename: 'Palmier.jpeg')
palmier.save!

pommier = Tree.new(
  name: "Pommier",
  species: "Fruit tree",
  address: "Place du Général-de-Gaulle, 76000 Rouen",
  size: "large",
  weight: "1322lb",
  description: "The apple trees are trees of the genus botanical Malus and the family of Rosaceae , the fruit is the apple . This genus includes some forty species of trees or shrubs , the most important of which, in terms of human nutrition , is the domestic apple tree ( Malus domestica ). Today we know more than 20,000 varieties.",
  price: 10,
  user_id: marco.id
  )
pommier.photo.attach(io: File.open(Rails.root.join('db/fixtures/trees/Pommier.jpg')), filename: 'Pommier.jpg')
pommier.save!

puts 'Finished!'


# Seeding Rentals
#puts 'Creating Rentals...'
#cactus_loc = Rental.new(
#  start_on: Time.now,
#  end_on: Time.now + 10.days,
#  total_price: "230",
#  status: status.value,
#  user_id: marco.id,
#  tree_id: cactus.id
#  )
#cactus_loc.save!

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
