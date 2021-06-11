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

seedUsers = [user_one, user_two, user_three, user_four, user_five, user_six]


# => SEEDING INTERESTS
# I have some seeding options from Facebook in a document // sport & industry only an example
Interest.destroy_all

puts 'Destroying interests..'
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
puts 'Destroying User_interests..'
UserInterest.destroy_all

puts "Creating User_interests"

200.times do
  user_interest = UserInterest.create!(user: User.all.sample, interest: Interest.all.sample)
end

puts "Completed Seeding"
