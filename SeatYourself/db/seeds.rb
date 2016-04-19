# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
#
#

User.destroy_all
Restaurant.destroy_all
Reservation.destroy_all

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
:phone => "1234567890",
:seats => 100,
:opening => "7:00:00",
:closing => "21:00:00",
:url => "http://3.bp.blogspot.com/-Oz5XdPqGddQ/ULy9zwbIDXI/AAAAAAAAPio/HZwYtIr7DfE/s1600/22-restaurant-logo-design.jpg"
)

momofuku = Restaurant.create!(
:name => "Momofuku",
:address => "210 King St",
:phone => "1234567890",
:seats => 100,
:opening => "8:00:00",
:closing => "22:00:00",
:url => "http://www.magazinehive.com/wp-content/uploads/2013/01/Good-Looking-Restaurant-Logos-Design-for-Inspiration.jpg"
)

Reservation.create!(
:date => "2016-04-20",
:time => "9:00:00PM",
:party_size => 10,
:restaurant_id => maman.id,
:user_id => bob.id
)
