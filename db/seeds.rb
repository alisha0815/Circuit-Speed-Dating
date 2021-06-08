# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'

puts 'Cleaning databse..'

User.destroy_all

p 'Destroying users..'

puts 'Creating users'

# User_one
photo_one = URI.open('https://unsplash.com/photos/V297jRiZZSI')

user_one = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: "Anne",
    description: "I am a fashion designer 🎨, fairly decent skier, and able to order cocktails 🍹😄 in 3 different languages. I like checking out a new bar with friends, scuba diving anwhere tropical, and trying a new hobby on for size. I appreciate when my date has an intelligent side, is ambitious.",
    age: 25,
    gender: "Female",
    height: 165,
    address: "Oslo, Norway"
    )
user_one.photos.attach(io: photo_one, filename: 'temp.png', content_type: 'image/png')
user_one.save!
puts "user_one created!"

# User_two
photo_two= URI.open('https://unsplash.com/photos/Ll9bGE6w8uw')

user_two = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: "Grace",
    description: "Hiking, sleeping, Netflix, running, baking, and tea. What I lack in technique. I make up for in enthusiasm though my technique has gotten pretty good 🤷‍♀️ Let's talk sports, dogs, and the ending of Infinity War.. 😉 ",
    age: 34,
    gender: "Female",
    height: 171.5,
    address: "Oslo, Norway"
    )
user_two.photos.attach(io: photo_two, filename: 'temp.png', content_type: 'image/png')
user_two.save!
puts "user_two created!"

# User_three
photo_three= URI.open('https://unsplash.com/photos/KJE--xk4AWE')

user_three = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: "Mallory",
    description: "I am a huge baseball fan. Also enjoy ski. 😉 I also really love Broadway musicals- definitely a total theatre nerd lol. Looking for a serious relationship but also open to friends - just important to have a connection and hopefully some common interests 😜",
    age: 31,
    gender: "Female",
    height: 167,
    address: "Eidsberg, Norway"
    )
user_three.photos.attach(io: photo_three, filename: 'temp.png', content_type: 'image/png')
user_three.save!
puts "user_three created!"

# User_four
photo_four= URI.open('https://unsplash.com/photos/E9PFbdhZmus')

user_four= User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: "Martin",
    description: "Born and raised in South Africa, but currently living in Oslo. I work at a successful startup tech company 👨‍💻, which is the reason I moved to Oslo. I'd like to think of myself as a down to earth, optimistic and ambitious guy 😉",
    age: 23,
    gender: "male",
    height: 178.5,
    address: "Bærum, Norway"
    )
user_four.photos.attach(io: photo_four, filename: 'temp.png', content_type: 'image/png')
user_four.save!
puts "user_four created!"

# User_five
photo_five = URI.open('https://unsplash.com/photos/bZtJgeehRVs')

user_five = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: "Helge",
    description: "Like to hang out with friends, squash, padel, motorbike, snowboarding, cooking, play games, series, books, music, more music, even more music. I love nature and space. Say Hi! 😎",
    age: 35,
    gender: "male",
    height: 187,
    address: "Oslo, Norway"
    )
user_five.photos.attach(io: photo_five, filename: 'temp.png', content_type: 'image/png')
user_five.save!
puts "user_five created!"

# User_six
photo_six= URI.open('https://unsplash.com/photos/7ibR2ENaDjg')

user_six = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: "Christian",
    description: "A geek at heart 😆, I like everything from board games, comics, books and movies to technology, science and various different franchises 🦄",
    age: 26,
    gender: "male",
    height: 174,
    address: "Trondheim, Norway"
    )
user_six.photos.attach(io: photo_six, filename: 'temp.png', content_type: 'image/png')
user_six.save!
puts "user_six created!"
