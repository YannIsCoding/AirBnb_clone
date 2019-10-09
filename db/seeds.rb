# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
flat = Flat.new(
  name: 'super flat',
  address: '42 super street',
  description: 'This is a really super flat',
  price_per_night: '42',
  number_of_guests: 2,
  )
  flat.remote_photo_url =  'https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80'
  flat.save

flat = Flat.new(
  name: 'mega flat',
  address: '42 mega street',
  description: 'This is a really mega flat',
  price_per_night: '42',
  number_of_guests: 2,
  )
  flat.remote_photo_url =  'https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80'
  flat.save

flat = Flat.new(
  name: 'giga flat',
  address: '42 giga street',
  description: 'This is a really giga flat',
  price_per_night: '42',
  number_of_guests: 2,
  )
  flat.remote_photo_url =  'https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80'
  flat.save

flat = Flat.new(
  name: 'tetra flat',
  address: '42 tetra street',
  description: 'This is a really tetra flat',
  price_per_night: '42',
  number_of_guests: 2,
  )
  flat.remote_photo_url =  'https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80'
  flat.save

flat = Flat.new(
  name: 'peta flat',
  address: '42 peta street',
  description: 'This is a really peta flat',
  price_per_night: '42',
  number_of_guests: 2,
  )
  flat.remote_photo_url =  'https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80'
  flat.save


puts 'Flats: IT IS DONE.'

User.create!(
  email: 'andy@lorem.epislom',
  password: '123456'
  )
User.create!(
  email: 'momo@lorem.epislom',
  password: '123456'
  )
puts 'User: IT IS DONE'


10.times do
  date = Date.today+rand(10000) #for future dates
  Booking.create!(
    start_date: date,
    end_date: date + 10,
    user_id: User.all.sample.id,
    flat_id: Flat.all.sample.id,
    )
end
puts 'Booking: IT IS DONE'

count = 1
10.times do
  Review.create!(content: 'Superbe review!',
                 rating: rand(1..5),
                 booking_id: count)
  count += 1
end
puts 'Review: IT IS DONE'
