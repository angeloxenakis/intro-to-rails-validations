# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

m1 = Movie.create(title: "Angel's Egg", rating: "R")
m2 = Movie.create(title: "Vampire Hunter D", rating: "R")

u1 = User.create(name: "Raul")

Ticket.create(date: "03/14/21", user_id: u1.id, movie_id: m1.id)