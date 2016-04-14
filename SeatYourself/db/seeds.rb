# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Restaurant.destroy_all
Reservation.destroy_all

## Users

vicky = User.create!(
  :first_name => "Vicky",
  :last_name => "Loo",
  :email => "vl@gmail.com",
  :phone => "9090909090"
)

hisayo = User.create!(
  :first_name => "Hisayo",
  :last_name => "Horie",
  :email => "hh@gmail.com",
  :phone => "9090909000"
)

## Restaurants

maman = Restaurant.create!(
  :name => "Maman",
  :address => "100 King St W",
  :phone => "1234567891",
  :opening => "7:00:00",
  :closing => "21:00:00",
  :seats => 100
)

momofuku = Restaurant.create!(
  :name => "Momofuku",
  :address => "102 King St W",
  :phone => "1234567892",
  :opening => "7:00:00",
  :closing => "21:00:00",
  :seats => 100
)

# ## Reservations

vicky_r = Reservation.create!(
  :date => "2016-04-14",
  :time => "8:00:00",
  :party_size => 8,
  :user_id => vicky.id,
  :restaurant_id => maman.id
)

hisayo_r = Reservation.create!(
  :date => "2016-04-15",
  :time => "19:00:00",
  :party_size => 2,
  :user_id => hisayo.id,
  :restaurant_id => momofuku.id
)
