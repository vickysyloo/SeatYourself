# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
#
#

bob = User.create!(
:first_name => "Bob",
:last_name => "Dude",
:email => "bd@gmail.com",
:phone => "909090",
:password => "hi"
)


maman = Restaurant.create!(
:name => "Maman",
:address => "19191 King St",
:phone => "9898",
:seats => 100,
:opening => "7:00:00",
:closing => "21:00:00"
)

Reservation.create!(
:date => "2016-04-20",
:time => "9:00:00PM",
:party_size => 10,
:restaurant_id => maman.id,
:user_id => bob.id
)
