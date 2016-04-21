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
:email => "bdude@gmail.com",
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
:url => "http://mamantoronto.com/wp-content/uploads/2015/05/mamangallery1.jpg"
)

momofuku = Restaurant.create!(
:name => "Momofuku",
:address => "210 King St",
:phone => "1234567890",
:seats => 100,
:opening => "8:00:00",
:closing => "22:00:00",
:url => "http://cdn.torontolife.com/wp-content/uploads/2012/10/oct12MomofukuNoodleBar_intro.jpg"
)
