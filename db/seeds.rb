# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning databse..'

User.destroy_all

p 'Destroying users..'

puts 'Creating users'

photo_one = URI.open('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')

user_one = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: "Jen",
    description: "About Me👩: I like to sing-talk, guys with messy hair, reading the New Yorker on Sunday mornings, and funny voices. About You🧑: If you are still reading, that's pretty good Let's do this.",
    age: 25,
    gender: "Female",
    height: "Student",
    photo: "I play the flute"
    )
user_one.photo.attach(io: photo_one, filename: 'temp.png', content_type: 'image/png')
user_one.save!
puts "created!"
