# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

# puts 'Creating 20 fake motos...'
# 20.times do
#   moto = Moto.new(
#     name: Faker::Company.name,
#     brand: Faker::FunnyName.name,
#     address: Faker::Address.city,
#     power: rand(125..1200),
#     price: rand(50..150),
#     kilometers: rand(5000..10_000),
#   )
#   moto.save!
# end
# puts 'Finished!'
puts 'destroy all users and motos'
User.destroy_all
puts 'clean'
puts 'creating users and motos'

user1 = User.create(first_name: "Thibault", last_name: "Danel", password: "azerty", email: "thibault@mail.com")
user2 = User.create(first_name: "Yassine", last_name: "Allaouna", password: "azerty", email: "yassine@mail.com")
user3 = User.create(first_name: "Hugo", last_name: "H", password: "azerty", email: "hugo@mail.com")

moto1 = Moto.create(name: "Turbo", brand: "Kawa", address: "paris", power: "800", price: 50, kilometers: 12_000, user: user1)
moto2 = Moto.create(name: "Fusion", brand: "Yam", address: "Lille", power: "1200", price: 85, kilometers: 15_000, user: user1)
moto3 = Moto.create(name: "Dragster", brand: "Ducat", address: "Toulouse", power: "650", price: 65, kilometers: 18_000, user: user2)
moto4 = Moto.create(name: "Valentino", brand: "Honda", address: "Lyon", power: "450", price: 75, kilometers: 29_000, user: user3)

puts "#{User.count}, users created"
puts "#{Moto.count}, motos created"
