# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Need to have already 2 accounts for 2 differents beach owners: user_id 1 (France) and user_id 2 (Foreign)"
puts "Reset Bookings and Creeks..."
Booking.destroy_all
Creek.destroy_all
puts "Done!"

puts "Creates 16 beaches ..."

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895251/beach-1_crkcsk.jpg")
creek1 = Creek.new(
  price: 500,
  capacity: "20",
  title: "La Rondinara",
  city: "Bonifacio",
  country: "France",
  user_id: 1,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !"
)
creek1.photo.attach(io: file, filename: 'beach-1.jpg', content_type: 'image/jpg')
creek1.save!


file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895251/beach-2_wtgvyq.jpg")
creek2 = Creek.new(
  price: 200,
  capacity: "30",
  title: "La Falaise",
  city: "Bonifacio",
  country: "France",
  user_id: 1,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !"
)
creek2.photo.attach(io: file, filename: 'beach-2.jpg', content_type: 'image/jpg')
creek2.save!

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895251/beach-3_hpfw82.jpg")
creek3 = Creek.new(
  price: 200,
  capacity: "20",
  title: "Plage du port",
  city: "Cassis",
  country: "France",
  user_id: 1,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek3.photo.attach(io: file, filename: 'beach-3.jpg', content_type: 'image/jpg')
creek3.save!

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895251/beach-4_dpt0sb.jpg")
creek4 = Creek.new(
  price: 300,
  capacity: "40",
  title: "Plage de l'Océan",
  city: "Cap Ferret",
  country: "France",
  user_id: 1,
  available: false,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek4.photo.attach(io: file, filename: 'beach-4.jpg', content_type: 'image/jpg')
creek4.save!


file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895251/beach-5_mpg6q4.jpg")
creek5 = Creek.new(
  price: 300,
  capacity: "50",
  title: "Plage d'Antibes",
  city: "Antibes",
  country: "France",
  user_id: 1,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek5.photo.attach(io: file, filename: 'beach-5.jpg', content_type: 'image/jpg')
creek5.save!

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895251/beach-6_oemvgs.jpg")
creek6 = Creek.new(
  price: 200,
  capacity: "60",
  title: "La Bellezza",
  city: "Trapani",
  country: "Sicilia",
  user_id: 2,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek6.photo.attach(io: file, filename: 'beach-6.jpg', content_type: 'image/jpg')
creek6.save!

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895252/beach-7_adh4cq.jpg")
creek7 = Creek.new(
  price: 400,
  capacity: "30",
  title: "Spiaggia del Sud",
  city: "Catania",
  country: "Sicilia",
  user_id: 2,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek7.photo.attach(io: file, filename: 'beach-7.jpg', content_type: 'image/jpg')
creek7.save!

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895253/beach-8_nqrj9x.jpg")
creek8 = Creek.new(
  price: 400,
  capacity: "10",
  title: "Spiaggia dei mori",
  city: "Palermo",
  country: "Sicilia",
  user_id: 2,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek8.photo.attach(io: file, filename: 'beach-8.jpg', content_type: 'image/jpg')
creek8.save!

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895252/beach-9_eyl6da.jpg")
creek9 = Creek.new(
  price: 200,
  capacity: "40X",
  title: "Newport beach",
  city: "New-York",
  country: "USA",
  user_id: 2,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek9.photo.attach(io: file, filename: 'beach-9.jpg', content_type: 'image/jpg')
creek9.save!

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582814308/xik6x8xrpy0sd41vyg3rmpyxyz5s.jpg")
creek10 = Creek.new(
  price: 800,
  capacity: "50",
  title: "Venice Beach",
  city: "Los Angeles",
  country: "USA",
  user_id: 2,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek10.photo.attach(io: file, filename: 'beach-10.jpg', content_type: 'image/jpg')
creek10.save!

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895252/beach-11_byargz.jpg")
creek11 = Creek.new(
  price: 700,
  capacity: "15",
  title: "Plage du Cap",
  city: "Saint-Florent",
  country: "France",
  user_id: 1,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek11.photo.attach(io: file, filename: 'beach-11.jpg', content_type: 'image/jpg')
creek11.save!

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895252/beach-12_puktck.jpg")
creek12 = Creek.new(
  price: 300,
  capacity: "20",
  title: "Calanques d'En Vau",
  city: "Cassis",
  country: "France",
  user_id: 1,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek12.photo.attach(io: file, filename: 'beach-12.jpg', content_type: 'image/jpg')
creek12.save!

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895253/beach-13_oybupp.jpg")
creek13 = Creek.new(
  price: 250,
  capacity: "30",
  title: "Cala Mondrago",
  city: "Majorques",
  country: "Spain",
  user_id: 2,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek13.photo.attach(io: file, filename: 'beach-13.jpg', content_type: 'image/jpg')
creek13.save!

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895253/beach-14_dtlxhe.jpg")
creek14 = Creek.new(
  price: 300,
  capacity: "40",
  title: "Plage de Balos",
  city: "Gramvoussa",
  country: "Greece",
  user_id: 2,
  available: false,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek14.photo.attach(io: file, filename: 'beach-14.jpg', content_type: 'image/jpg')
creek14.save!

file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582814228/vb9oy78r5e1pwj81ht1ympyaahtb.jpg")
creek15 = Creek.new(
  price: 400,
  capacity: "10",
  title: "Ko Samui beach",
  city: "Ko Samui",
  country: "Thailand",
  user_id: 2,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek15.photo.attach(io: file, filename: 'beach-15.jpg', content_type: 'image/jpg')
creek15.save!


file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582895255/beach-16_ihleah.jpg")
creek16 = Creek.new(
  price: 500,
  capacity: "40",
  title: "Copacabana",
  city: "Copacabana",
  country: "Brasil",
  user_id: 2,
  available: true,
  rating: 1,
  description: "Come discover my amazing beach for a delicious afternoon under the sun with friends or family ! Mats, umbrellas and fresh shower at you disposal.
  The beach is continuously sunny because of its great exposure (South-West). For the snorkling lovers, there are so many beautiful fishes and other animals to see !")
creek16.photo.attach(io: file, filename: 'beach-16.jpg', content_type: 'image/jpg')
creek16.save!

# file = URI.open("https://res.cloudinary.com/dtgr3qmw9/image/upload/v1582894123/beach-1_vvth5g.jpg")
# creek1 = Creek.new(
#   price: 10,
#   capacity: "10",
#   title: "Plage test SEED",
#   city: "Marseille",
#   country: "France",
#   user_id: 1,
#   available: true,
#   rating: 4,
#   description: "Blablabla..."
# )
# creek1.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
# creek1.save!


# file = URI.open("XXXX")
# creek1 = Creek.new(
#   price: XX,
#   capacity: "XX",
#   title: "XX",
#   city: "XX",
#   country: "XX",
#   user_id: X,
#   available: X,
#   rating: X,
#   description: "XX"
# )
# creek1.photo.attach(io: file, filename: 'beach-1.jpg', content_type: 'image/jpg')
# creek1.save!

puts "Done !"