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

require "open-uri"
puts 'destroy all users and motos'
Booking.destroy_all
User.destroy_all
Moto.destroy_all
puts 'clean'
puts 'creating users and motos'

user1 = User.create(first_name: "Thibault", last_name: "Danel", password: "azerty", email: "thibault@mail.com")
user2 = User.create(first_name: "Yassine", last_name: "Allaouna", password: "azerty", email: "yassine@mail.com")
user3 = User.create(first_name: "Hugo", last_name: "H", password: "azerty", email: "hugo@mail.com")

file1 = URI.open('https://www.simamoto.fr/img/block/1630575345--photo-600-x-4005-1.jpg')
moto1 = Moto.new(name: "Turbo", brand: "Kawa", address: "paris", power: "800", price: 50, kilometers: 12_000, user: user1)
moto1.photo.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
moto1.save!

file2 = URI.open('https://cdn-1.motorsport.com/images/amp/0mNQb1q2/s6/dakar-dakar-1989-stephane-peterhansel-yamaha-tener-750-7156519.jpg')
moto2 = Moto.new(name: "Fusion", brand: "Yam", address: "Lille", power: "1200", price: 85, kilometers: 15_000, user: user1)
moto2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
moto2.save!

file3 = URI.open('https://remeng.rosselcdn.net/sites/default/files/dpistyles_v2/ena_16_9_extra_big/2020/01/02/node_120309/11489489/public/2020/01/02/B9722019714Z.1_20200102170307_000%2BGLMF5QCA3.1-0.jpg?itok=1bulRUnU1577981053')
moto3 = Moto.new(name: "Dragster", brand: "Ducat", address: "Toulouse", power: "650", price: 65, kilometers: 18_000, user: user2)
moto3.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
moto3.save!

file4 = URI.open('https://www.ouestfrance-auto.com/p/yahooto/2068795_AA110272_1_c6557df11b471fd1a534cf38e510b526e506ec1d_w_ouestfranceauto_.jpg')
moto4 = Moto.new(name: "Valentino", brand: "Honda", address: "Lyon", power: "450", price: 75, kilometers: 29_000, user: user3)
moto4.photo.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
moto4.save!

file5 = URI.open('https://fr.motocrossmag.be/wp-content/uploads/2020/12/RiejuDakar_OriolMena1.jpg')
moto5 = Moto.new(name: "Duke", brand: "KTM", address: "Nice", power: "300", price: 60, kilometers: 25_000, user: user3)
moto5.photo.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
moto5.save!

file6 = URI.open('https://www.ouestfrance-auto.com/p/yahooto/2069821_AA110400_1_e672aed5e2f6a7010adedc1ed755ab80fad28195_w_ouestfranceauto_.jpg')
moto6 = Moto.new(name: "Rebel", brand: "Honda", address: "Lyon", power: "1100", price: 100, kilometers: 12000, user: user3)
moto6.photo.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
moto6.save!

file7 = URI.open('https://www.ouestfrance-auto.com/p/yahooto/2079256_AA110272_1_94ab22402dade9606e8bb84225cfc5328b49f99f_w_ouestfranceauto_.jpg')
moto7 = Moto.new(name: "Fat Boy", brand: "Harley Davidson", address: "Lyon", power: "1584", price: 125, kilometers: 31_000, user: user3)
moto7.photo.attach(io: file7, filename: 'nes.png', content_type: 'image/png')
moto7.save!

file8 = URI.open('https://www.ouestfrance-auto.com/p/yahooto/2066844_AA110272_1_18bcba63356b3acc506dfd952cf5e88be6765711_w_ouestfranceauto_.jpg')
moto8 = Moto.new(name: "Tiger", brand: "Triumph", address: "Lyon", power: "1200", price: 85, kilometers: 10_000, user: user3)
moto8.photo.attach(io: file8, filename: 'nes.png', content_type: 'image/png')
moto8.save!

file9 = URI.open('https://www.ouestfrance-auto.com/p/yahooto/2081731_AA109984_1_3f439c031f6109763f170f0b77ae05ca3aa3bfaf_w_ouestfranceauto_.jpg')
moto9 = Moto.new(name: "Speed Triple", brand: "Triumph", address: "Lyon", power: "1050", price: 99, kilometers: 11_000, user: user3)
moto9.photo.attach(io: file9, filename: 'nes.png', content_type: 'image/png')
moto9.save!

puts "#{User.count}, users created"
puts "#{Moto.count}, motos created"
