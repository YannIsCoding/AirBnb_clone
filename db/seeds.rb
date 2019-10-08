# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.create!(
  name: 'super flat',
  address: '42 super street',
  description: 'This is a really super flat',
  price_per_night: '42',
  number_of_guests: 2
  )
Flat.create!(
  name: 'mega flat',
  address: '42 mega street',
  description: 'This is a really mega flat',
  price_per_night: '42',
  number_of_guests: 2
  )
Flat.create!(
  name: 'giga flat',
  address: '42 giga street',
  description: 'This is a really giga flat',
  price_per_night: '42',
  number_of_guests: 2
  )
Flat.create!(
  name: 'tetra flat',
  address: '42 tetra street',
  description: 'This is a really tetra flat',
  price_per_night: '42',
  number_of_guests: 2
  )
Flat.create!(
  name: 'peta flat',
  address: '42 peta street',
  description: 'This is a really peta flat',
  price_per_night: '42',
  number_of_guests: 2
  )

puts 'Flats: IT IS DONE.'

User.create!(
  email: 'andy@lorem.epislom',
  password: '123456'
  )
puts 'User: IT IS DONE'
