# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'

puts 'Cleaning database..'
#
p 'Destroying users..'
User.destroy_all

puts 'Destroying User_interests..'
UserInterest.destroy_all

puts 'Destroying Interests..'
Interest.destroy_all

puts 'Destroying Bookings..'
Booking.destroy_all

puts 'Destroying User_Matches..'
UserMatch.destroy_all

puts 'Destroying Matches..'
Match.destroy_all

puts 'Creating users'

# User_one
photo_one_first = URI.open('https://images.unsplash.com/photo-1615332327401-3c8f03c8af5f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
photo_one_second = URI.open('https://images.unsplash.com/photo-1616689321313-4e2eeabd5420?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')

user_one = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: "Anne",
    description: "I am a fashion designer 🎨, fairly decent skier, and able to order cocktails 🍹😄 in 3 different languages. I like checking out a new bar with friends, scuba diving anwhere tropical, and trying a new hobby on for size. I appreciate when my date has an intelligent side, is ambitious.",
    age: 25,
    gender: "female",
    height: 165,
    address: "Oslo, Norway"
    )
user_one.photos.attach(io: photo_one_first, filename: 'temp.png', content_type: 'image/png')
user_one.photos.attach(io: photo_one_second, filename: 'temp.png', content_type: 'image/png')
user_one.save!
puts "user_one created!"

# User_two
photo_two_first= URI.open('https://images.unsplash.com/photo-1562904403-a5106bef8319?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
photo_two_second= URI.open('https://images.unsplash.com/photo-1501555088652-021faa106b9b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aGlraW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60')

user_two = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: "Grace",
    description: "Hiking, sleeping, Netflix, running, baking, and tea. What I lack in technique. I make up for in enthusiasm though my technique has gotten pretty good 🤷‍♀️ Let's talk sports, dogs, and the ending of Infinity War.. 😉 ",
    age: 34,
    gender: "female",
    height: 171.5,
    address: "Oslo, Norway"
    )
user_two.photos.attach(io: photo_two_first, filename: 'temp.png', content_type: 'image/png')
user_two.photos.attach(io: photo_two_second, filename: 'temp.png', content_type: 'image/png')
user_two.save!
puts "user_two created!"

# User_three
photo_three_first= URI.open('https://images.unsplash.com/photo-1558467612-d1dd65c7ede7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
photo_three_second= URI.open('https://images.unsplash.com/photo-1504730030853-eff311f57d3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHN1bmdsYXNzJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60')
user_three = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: "Mallory",
    description: "I am a huge baseball fan. Also enjoy ski. 😉 I also really love Broadway musicals- definitely a total theatre nerd lol. Looking for a serious relationship but also open to friends - just important to have a connection and hopefully some common interests 😜",
    age: 31,
    gender: "female",
    height: 167,
    address: "Eidsberg, Norway"
    )
user_three.photos.attach(io: photo_three_first, filename: 'temp.png', content_type: 'image/png')
user_three.photos.attach(io: photo_three_second, filename: 'temp.png', content_type: 'image/png')
user_three.save!
puts "user_three created!"

# User_four
photo_four_first= URI.open('https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')
photo_four_second= URI.open('https://images.unsplash.com/photo-1511988617509-a57c8a288659?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z3JvdXAlMjBtZW4lMjBzdW5nbGFzc2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60')
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
user_four.photos.attach(io: photo_four_first, filename: 'temp.png', content_type: 'image/png')
user_four.photos.attach(io: photo_four_second, filename: 'temp.png', content_type: 'image/png')
user_four.save!
puts "user_four created!"

# User_five
photo_five_first = URI.open('https://images.unsplash.com/photo-1602900017944-678041f27dbc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
photo_five_second = URI.open('https://images.unsplash.com/photo-1503774620960-c9c62fe1c6ee?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZG9nJTIwaGFuZHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60')
user_five = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: "Helge",
    description: "Like to hang out with friends, squash, padel, motorbike, snowboarding, cooking, play games, series, books, music, more music, even more music. I love nature and space. I like dogs! Say Hi! 😎",
    age: 35,
    gender: "male",
    height: 187,
    address: "Oslo, Norway"
    )
user_five.photos.attach(io: photo_five_first, filename: 'temp.png', content_type: 'image/png')
user_five.photos.attach(io: photo_five_second, filename: 'temp.png', content_type: 'image/png')
user_five.save!
puts "user_five created!"

# User_six
photo_six_first= URI.open('https://images.unsplash.com/photo-1567784177951-6fa58317e16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80')
photo_six_second= URI.open('https://images.unsplash.com/photo-1571069754526-1731cdfa46b8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aGFuZHMlMjBiZWFjaHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60')
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
user_six.photos.attach(io: photo_six_first, filename: 'temp.png', content_type: 'image/png')
user_six.photos.attach(io: photo_six_second, filename: 'temp.png', content_type: 'image/png')
user_six.save!
puts "user_six created!"

# User_seven
photo_seven_first= URI.open('https://images.unsplash.com/photo-1603086360919-8b8eacad64bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
photo_seven_second= URI.open('https://images.unsplash.com/photo-1603084756639-e5f9a0d2123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80')
user_seven = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.male_first_name,
    description: "Just looking for someone to go to my favorite music festival with 🎶Message me your dream lineup 🙂",
    age: rand(25..35),
    gender: "male",
    height: rand(170..190),
    address: "Kalandseidet, Norway"
    )
user_seven.photos.attach(io: photo_seven_first, filename: 'temp.png', content_type: 'image/png')
user_seven.photos.attach(io: photo_seven_second, filename: 'temp.png', content_type: 'image/png')
user_seven.save!

# User_eight
photo_eight_first= URI.open('https://images.unsplash.com/photo-1508243529287-e21914733111?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80')
photo_eight_second= URI.open('https://images.unsplash.com/photo-1508243771214-6e95d137426b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=934&q=80')
user_eight = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.male_first_name,
    description: "Do you like eating pizza? Watching Game of Thrones😎? Breathing air, mostly? You might be my soulmate!💖🙋‍♀️",
    age: rand(25..35),
    gender: "male",
    height: rand(170..190),
    address: "Manstad, Norway"
    )
user_eight.photos.attach(io: photo_eight_first, filename: 'temp.png', content_type: 'image/png')
user_eight.photos.attach(io: photo_eight_second, filename: 'temp.png', content_type: 'image/png')
user_eight.save!

# User_nine
photo_nine_first= URI.open('https://images.unsplash.com/photo-1537511446984-935f663eb1f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80')
photo_nine_second= URI.open('https://images.unsplash.com/photo-1518644730709-0835105d9daa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80')
user_nine = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.male_first_name,
    description: "Heli pilot. Dog owner. Work in finance. Looking for serious relationship. I have a sailing boat so that we can have a sailing trip every summer 😊⛴",
    age: rand(25..35),
    gender: "male",
    height: rand(170..190),
    address: "Sandnes, Norway"
    )
user_nine.photos.attach(io: photo_nine_first, filename: 'temp.png', content_type: 'image/png')
user_nine.photos.attach(io: photo_nine_second, filename: 'temp.png', content_type: 'image/png')
user_nine.save!

# User_ten
photo_ten_first= URI.open('https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80')
photo_ten_second= URI.open('https://images.unsplash.com/photo-1554774853-d50f9c681ae2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1051&q=80')
user_ten = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.male_first_name,
    description: "I want her to like me for what I offer and wish, and because she feels the same way, and not because of my looks😛",
    age: rand(25..35),
    gender: "male",
    height: rand(170..190),
    address: "Kongsberg, Norway"
    )
user_ten.photos.attach(io: photo_ten_first, filename: 'temp.png', content_type: 'image/png')
user_ten.photos.attach(io: photo_ten_second, filename: 'temp.png', content_type: 'image/png')
user_ten.save!

# User_eleven
photo_eleven_first= URI.open('https://images.unsplash.com/photo-1441622915984-05d13dfb3d8c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80')
photo_eleven_second= URI.open('https://images.unsplash.com/photo-1441690636075-59519564be46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1051&q=80')
user_eleven = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.male_first_name,
    description: "Hi, I'm an attorney by day, and in my spare time, I'm writing my first novel. Training for the next marathon is my go-to stress relief. I'm an avid reader of the Economist and the Atlantic. I keep up-to-date with politics but try to stay out of the drama. 🤗Early morning meditation is my spiritual practice.",
    age: rand(25..35),
    gender: "male",
    height: rand(170..190),
    address: "Stavanger, Norway"
    )
user_eleven.photos.attach(io: photo_eleven_first, filename: 'temp.png', content_type: 'image/png')
user_eleven.photos.attach(io: photo_eleven_second, filename: 'temp.png', content_type: 'image/png')
user_eleven.save!

# User_twelve
photo_twelve_first= URI.open('https://images.unsplash.com/photo-1551336271-52dfa3160501?ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8M3w5NDA1NzAzfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60')
photo_twelve_second= URI.open('https://images.unsplash.com/photo-1584952449284-923d1340e511?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dHJhaW5pbmclMjBndXklMjBneW18ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60')
user_twelve = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.male_first_name,
    description: " I own my own Software Development company. I love jazz and go watch my favorite bands as often as possible. To get out of my head, I go rock climbing. Would you like to join me? 🤡🥳",
    age: rand(25..35),
    gender: "male",
    height: rand(170..190),
    address: "Mandal, Norway"
    )
user_twelve.photos.attach(io: photo_twelve_first, filename: 'temp.png', content_type: 'image/png')
user_twelve.photos.attach(io: photo_twelve_second, filename: 'temp.png', content_type: 'image/png')
user_twelve.save!

# User_thirteen
photo_thirteen_first= URI.open('https://images.unsplash.com/photo-1532015917327-c7c46aa1d930?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZmlzaGluZ3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60')
photo_thirteen_second= URI.open('https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1051&q=80')
user_thirteen = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.male_first_name,
    description: "I've been in a couple of great long term relationships and am ready to find someone special to build a life with. Send me a message and let me know what your favorite type of food is. 👩‍🍳I know the best spots in town!😋😎",
    age: rand(25..35),
    gender: "male",
    height: rand(170..190),
    address: "Oslo, Norway"
    )
user_thirteen.photos.attach(io: photo_thirteen_first, filename: 'temp.png', content_type: 'image/png')
user_thirteen.photos.attach(io: photo_thirteen_second, filename: 'temp.png', content_type: 'image/png')
user_thirteen.save!

# User_fourteen
photo_fourteen_first= URI.open('https://images.unsplash.com/photo-1568312364058-d8b2a621db27?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
photo_fourteen_second= URI.open('https://images.unsplash.com/photo-1568312364089-efc64b21f2cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=934&q=80')
user_fourteen = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.female_first_name,
    description: "Hi 🤗 I recently moved to Norway. I prefer to keep relationships casual and to focus on having a great time when we're together 😛",
    age: rand(25..35),
    gender: "female",
    height: rand(160..175),
    address: "Bergen, Norway"
    )
user_fourteen.photos.attach(io: photo_fourteen_first, filename: 'temp.png', content_type: 'image/png')
user_fourteen.photos.attach(io: photo_fourteen_second, filename: 'temp.png', content_type: 'image/png')
user_fourteen.save!

# User_fifteen
photo_fifteen_first = URI.open('https://images.unsplash.com/photo-1522390108011-5f8667fd551d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80')
photo_fifteen_second = URI.open('https://images.unsplash.com/photo-1512413316925-fd4b93f31521?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=934&q=80')
user_fifteen = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.female_first_name,
    description: "Hi! 😍 I'm a professional photographer for National Geographic. I've been to 86 countries, and my favorite is Turkey. The food is incredible! I train Muay Thai as often as possible and hit up comedy shows when I can. 🤩",
    age: rand(25..35),
    gender: "female",
    height: rand(160..175),
    address: "Lycksele, Sweden"
    )
user_fifteen.photos.attach(io: photo_fifteen_first, filename: 'temp.png', content_type: 'image/png')
user_fifteen.photos.attach(io: photo_fifteen_second, filename: 'temp.png', content_type: 'image/png')
user_fifteen.save!

# User_sixteen
photo_sixteen_first= URI.open('https://images.unsplash.com/photo-1589935593001-61a9abc746ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=934&q=80')
photo_sixteen_second= URI.open('https://images.unsplash.com/photo-1589935346624-ecded8e56099?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80')
user_sixteen = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.female_first_name,
    description: "I'm a literary agent by day, but when I'm not reading historical fiction manuscripts, I love to travel—especially in Eastern Europe, where my family's from.😍",
    age: rand(25..35),
    gender: "female",
    height: rand(160..175),
    address: "Warszawa, Poland"
    )
user_sixteen.photos.attach(io: photo_sixteen_first, filename: 'temp.png', content_type: 'image/png')
user_sixteen.photos.attach(io: photo_sixteen_second, filename: 'temp.png', content_type: 'image/png')

# User_seventeen
photo_seventeen_first = URI.open('https://images.unsplash.com/photo-1607877342019-78edd203ecb7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGxpdHRsZSUyMGdpcmx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60')
photo_seventeen_second = URI.open('https://images.unsplash.com/photo-1612847061577-67689dec1253?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=975&q=80')
user_seventeen = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.female_first_name,
    description: "Hei! The 3 most-recent Netflix shows I loved: The Haunting of Bly Manor, The Queen's Gambit, The Crown. How about you? 🤩",
    age: rand(25..35),
    gender: "female",
    height: rand(160..175),
    address: "London, UK"
    )
user_seventeen.photos.attach(io: photo_seventeen_first, filename: 'temp.png', content_type: 'image/png')
user_seventeen.photos.attach(io: photo_seventeen_second, filename: 'temp.png', content_type: 'image/png')
user_seventeen.save!

# User_eighteen
photo_eighteen_first= URI.open('https://images.unsplash.com/photo-1594361487118-f4e2b2288aea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80')
photo_eighteen_second= URI.open('https://images.unsplash.com/photo-1596378232746-1dfcefb7bcf1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1001&q=80')
user_eighteen = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.female_first_name,
    description: "My favorite vacation spot is Barcelona. 🏝 There’s nothing like a little siesta to keep the party going all night.😆 What’s your favorite travel destination?",
    age: rand(25..35),
    gender: "female",
    height: rand(160..175),
    address: "Oslo, Norway"
    )
user_eighteen.photos.attach(io: photo_eighteen_first, filename: 'temp.png', content_type: 'image/png')
user_eighteen.photos.attach(io: photo_eighteen_second, filename: 'temp.png', content_type: 'image/png')
user_eighteen.save!

# User_nineteen
photo_nineteen_first = URI.open('https://images.unsplash.com/photo-1520736179427-d7f281fc39f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=934&q=80')
photo_nineteen_second = URI.open('https://images.unsplash.com/photo-1600353068218-27240d813841?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y2F0JTIwd29tYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60')
user_nineteen = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.female_first_name,
    description: "I love staying plugged into political news, and I'm a vocal supporter of progressive ideals. What causes are you passionate about? 🤔😎",
    age: rand(25..35),
    gender: "female",
    height: rand(160..175),
    address: "Carse, UK"
    )
user_nineteen.photos.attach(io: photo_nineteen_first, filename: 'temp.png', content_type: 'image/png')
user_nineteen.photos.attach(io: photo_nineteen_second, filename: 'temp.png', content_type: 'image/png')
user_nineteen.save!

# User_twenty
photo_twenty_first = URI.open('https://images.unsplash.com/photo-1571442463800-1337d7af9d2f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80')
photo_twenty_second = URI.open('https://images.unsplash.com/photo-1589156280159-27698a70f29e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=933&q=80')
user_twenty = User.new(
    email: Faker::Internet.email(domain: 'gmail'),
    password: "password",
    name: Faker::Name.female_first_name,
    description: "I have a lot more time to try new things. My work as a programmer at a tech startup keeps me busy, but on the weekends, I've been mountain biking in the hills near my house and trying my hand at racquetball",
    age: rand(25..35),
    gender: "female",
    height: rand(160..175),
    address: "Hamar, Norway"
    )
user_twenty.photos.attach(io: photo_twenty_first, filename: 'temp.png', content_type: 'image/png')
user_twenty.photos.attach(io: photo_twenty_second, filename: 'temp.png', content_type: 'image/png')
user_twenty.save!

seedUsers = [user_one, user_two, user_three, user_four, user_five, user_six,
             user_seven, user_eight, user_nine, user_ten, user_eleven, user_twelve,
             user_thirteen, user_fourteen, user_fifteen, user_sixteen, user_seventeen, user_eighteen,
             user_nineteen, user_twenty]


# => SEEDING INTERESTS

puts 'Creating pre-filled interests'

def seed_interests

  business = ['Advertising', 'Agriculture', 'Architecture', 'Aviation', 'Banking', 'Investment banking', 'Online banking', 'Retail banking', 'Business', 'Construction', 'Design', 'Fashion design', 'Graphic design', 'Interior design', 'Economics', 'Engineering', 'Entrepreneurship', 'Health care', 'Higher education', 'Management', 'Marketing', 'Nursing', 'Digital marketing', 'Display advertising', 'Email marketing', 'Online advertising', 'Search engine optimization', 'Social media', 'Social media marketing', 'Web design', 'Web development', 'Web hosting', 'Personal finance', 'Real estate', 'Retail', 'Sales', 'Science', 'Small business']
  entertainment = ['Action games', 'Board games', 'Browser games', 'Card games', 'Casiono games', 'First-person shooter games', 'Gambling', 'Massively multiplayer online games', 'Massively multiplayer online role-playing games', 'Onine games', 'Online poker', 'Puzzle video games', 'Racing games', 'Role-playing games', 'Shooter games', 'Simulation games', 'Sports games', 'Strategy games', 'Video games', 'Word games', 'Live events', 'Ballet', 'Bars', 'Concerts', 'Dancehalls', 'Music festivals', 'Nightclubs', 'Parties', 'Plays', 'Theatre']
  movies = ['Action movies', 'Animated movies', 'Animate movies', 'Bollywood movies', 'Comedy movies', 'Documentary movies', 'Drama movies', 'Fantasy movies', 'Horror movies', 'Musical theatre', 'Science fiction movies', 'Thriller movies', 'TV comedies', 'TV game shows', 'TV reality shows', 'TV talkshows']
  music = ['Blues music', 'Classical music', 'Country music', 'Dance music', 'Electronic music', 'Gospel music', 'Heavy metal music', 'Hip hop music', 'Jazz music', 'Music videos', 'Pop music',]
  reading = ['Books', 'Comics', 'E-books', 'Fiction books', 'Literature', 'Magazines', 'Manga', 'Mystery fiction', 'Newspapers', 'Non-fiction books', 'Romance novels']
  relationships = ['Dating', 'Family', 'Fatherhood', 'Friendship', 'Marriage', 'Motherhood', 'Parenting', 'Weddings']
  fitness = ['Bodybuilding', 'Meditation', 'Physical exercise', 'Physical fitness', 'Running', 'Weight training', 'Yoga']
  food = ['Alcoholic beverages', 'Beer', 'Distilled beverage', 'Wine', 'Beverages', 'Coffee', 'Energy drinks', 'Juice', 'Soft drinks', 'Tea', 'Cooking', 'Baking', 'Recipes', 'Cuisine', 'Chinese cuisine', 'French cuisine', 'German cuisine', 'Greek cuisine', 'Indian cuisine', 'Italian cuisine', 'Japanese cuisine', 'Korean cuisine', 'Latin American cuisine', 'Mexican cuisine', 'Middle Eastern cuisine', 'Spanish cuisine', 'Thai cuisine', 'Vitnamese cuisine', 'Food', 'Barbecue', 'Chocolate', 'Desserts', 'Fast food', 'Organic food', 'Pizza', 'Seafood', 'Veganism', 'Vegetarianism', 'Restaurants', 'Coffeehouses', 'Diners', 'Fast casual restaurants', 'Fast food restaurants']
  hobbies = ['Arts and music', 'Acting', 'Crafts', 'Dance', 'Drawing', 'Drums', 'Fine art', 'Guitar', 'Painting', 'Performing arts', 'Photography', 'Sculpture', 'Singing', 'Writing', 'Current events', 'Home and garden', 'Do it yourself (DIY)', 'Furniture', 'Gardening', 'Home Appliances', 'Home improvement', 'Pets', 'Birds', 'Cats', 'Dogs', 'Fish', 'Horses', 'Pet food', 'Rabbits', 'Reptiles', 'Politics and social issues', 'Charity and causes', 'Community issues', 'Environmentalism', 'Law', 'Military', 'Politics', 'Religion', 'Sustainability', 'Veterans', 'Volunteering', 'Travel','Adventure travel', 'Air travel', 'Beaches', 'Car rentals', 'Cruises', 'Ecotourism', 'Hotels', 'Lakes', 'Mountains', 'Nature', 'Theme parks', 'Tourism', 'Vacations', 'Vehicles', 'Automibiles', 'Boats', 'Electric vehicle', 'Hybrids', 'Minivans', 'Motorcycles', 'RVs', 'SUVs', 'Scooters', 'Trucks']
  fashion = ['Beauty', 'Beauty salons', 'Cosmetics', 'Fragrances', 'Hair products', 'Spas', 'Tattoos', 'Clothing', 'Children clothing', 'Men clothing', 'Shoes', 'Women clothing', 'Fashionaccessories', 'Dresses', 'Handbags', 'Jewelry', 'Sunglasses', 'Shopping', 'Boutiques', 'Coupons', 'Discount stores', 'Luxury goods', 'Online shopping', 'Shopping malls', 'Toys']
  outdoors = ['Outdoor recreation', 'Boating', 'Camping', 'Fishing', 'Horseback riding', 'Hunting', 'Mountain biking', 'Surfing', 'Sports', 'American football', 'Association football (Soccer)', 'Auto racing', 'Baseball', 'Basketball', 'College football', 'Golf', 'Marathons', 'Skiing', 'Snowboarding', 'Swimming', 'Tennis', 'Thriathlons', 'Volleyball']
  technology = ['Computers', 'Computer memory', 'Computer monitors', 'Computer processors', 'Computer servers', 'Desktop computers', 'Free software', 'Hard drives', 'Network storage', 'Software', 'Tablet computers', 'Consumer electronics', 'Audio equipment', 'Camcorders', 'Cameras', 'E-book readers', 'GPS devices', 'Game consoles', 'Mobile phones', 'Portable media players', 'Projectors', 'Smartphones', 'Televisions']

  business.each do |name|
    Interest.create!(category: 'business', name: name)
  end

  entertainment.each do |name|
    Interest.create!(category: 'entertainment', name: name)
  end
  
  movies.each do |name|
    Interest.create!(category: 'movies', name: name)
  end

  music.each do |name|
    Interest.create!(category: 'music', name: name)
  end

  reading.each do |name|
    Interest.create!(category: 'reading', name: name)
  end

  relationships.each do |name|
    Interest.create!(category: 'relationships', name: name)
  end

  fitness.each do |name|
    Interest.create!(category: 'fitness', name: name)
  end

  food.each do |name|
    Interest.create!(category: 'food', name: name)
  end

  hobbies.each do |name|
    Interest.create!(category: 'hobbies', name: name)
  end

  fashion.each do |name|
    Interest.create!(category: 'fashion', name: name)
  end

  outdoors.each do |name|
    Interest.create!(category: 'outdoors', name: name)
  end

  technology.each do |name|
    Interest.create!(category: 'technology', name: name)
  end

  puts "Interests created!"
end

seed_interests

# => SEEDING USER_INTERESTS

puts "Creating User_interests"

User.all.each do |user|
  40.times do
    user_interest = UserInterest.create!(user: user, interest: Interest.all.sample)
  end
  puts "User seeded with interests"
end

puts "Completed User_interests"

# => SEEDING BOOKINGS

puts "Creating User Bookings from 1st Event"

booking1 = Booking.create(user: user_one, event: Event.first)
booking2 = Booking.create(user: user_two, event: Event.first)
booking3 = Booking.create(user: user_three, event: Event.first)
# booking4 = Booking.create(user: user_four, event: Event.first)
booking5 = Booking.create(user: user_five, event: Event.first)
booking6 = Booking.create(user: user_six, event: Event.first)
puts "created #{Booking.count} bookings"
puts "Completed User Bookings"

# => CREATE EVENT / MANUALLY

# puts "Creating Matches for 1st Event"

# Event.first.match_making

puts "Completed Seeding"
