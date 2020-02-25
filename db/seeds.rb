# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
 Creek.create!(title: Faker::Name.name, rating: Faker::Number.decimal_part(digits: 2), city: Faker::Address.city, country: Faker::Address.country, user_id: 2)
end