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
photo_one = URI.open('https://images.unsplash.com/photo-1615332327401-3c8f03c8af5f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')

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
photo_two= URI.open('https://images.unsplash.com/photo-1562904403-a5106bef8319?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')

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
photo_three= URI.open('https://images.unsplash.com/photo-1558467612-d1dd65c7ede7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')

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
photo_four= URI.open('https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')

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
photo_five = URI.open('https://images.unsplash.com/photo-1602900017944-678041f27dbc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')

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
photo_six= URI.open('https://images.unsplash.com/photo-1567784177951-6fa58317e16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80')

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


# => SEEDING INTERESTS

Interest.destroy_all

puts 'Destroying interests..'

puts 'Creating pre-filled interests'

def seed_interests
  sport = ['Tennis', 'Squash', 'Cricket', 'Rugby', 'Running', 'Climbing', 'Other']
  industry = ['Arts and Humanities', 'Physical Science and Engineering', 'Math and Logic',
          'Computer Science', 'Data Science', 'Economics and Finance', 'Business',
          'Social Sciences', 'Language', 'Other']

  sport.each do |name|
    Interest.create!(category: 'sport', name: name)
  end

  industry.each do |name|
    Interest.create!(category: 'industry', name: name)
  end

  puts "Interests created!"
end

seed_interests
