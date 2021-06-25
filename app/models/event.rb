class Event < ApplicationRecord
  attr_accessor :start_date, :end_date

  validates :start_time, :end_time, presence: true
  default_scope -> { order(:start_time) }  # Our meetings will be ordered by their start_time by default

  has_many :bookings
  has_many :users, through: :bookings
  has_many :matches

  def time
    "#{start_time.strftime('%I:%M %p')} - #{end_time.strftime('%I:%M %p')}"
  end

  # =>

  # def match_making
    # => Can call Event(x).match_making
    # users.males.each do |male|
      # users.females.each do |female|
        # match = Match.create(event: self)
        # UserMatch.create(user: female, match: match, status: "pending")
        # UserMatch.create(user: male, match: match, status: "pending")
      # end
    # end
  # end

  def match_making
    males = users.males
    females = users.females

    match_1 = Match.create(event: self)
        UserMatch.create(user: males[0], match: match_1, status: "pending")
        UserMatch.create(user: females[0], match: match_1, status: "pending")
    match_2 = Match.create(event: self)
        UserMatch.create(user: males[1], match: match_2, status: "pending")
        UserMatch.create(user: females[1], match: match_2, status: "pending")
    match_3 = Match.create(event: self)
        UserMatch.create(user: males[2], match: match_3, status: "pending")
        UserMatch.create(user: females[2], match: match_3, status: "pending")

    match_4 = Match.create(event: self)
        UserMatch.create(user: males[0], match: match_4, status: "pending")
        UserMatch.create(user: females[1], match: match_4, status: "pending")
    match_5 = Match.create(event: self)
        UserMatch.create(user: males[1], match: match_5, status: "pending")
        UserMatch.create(user: females[2], match: match_5, status: "pending")
    match_6 = Match.create(event: self)
        UserMatch.create(user: males[2], match: match_6, status: "pending")
        UserMatch.create(user: females[0], match: match_6, status: "pending")

    match_7 = Match.create(event: self)
        UserMatch.create(user: males[0], match: match_7, status: "pending")
        UserMatch.create(user: females[2], match: match_7, status: "pending")
    match_8 = Match.create(event: self)
        UserMatch.create(user: males[1], match: match_8, status: "pending")
        UserMatch.create(user: females[0], match: match_8, status: "pending")
    match_9 = Match.create(event: self)
        UserMatch.create(user: males[2], match: match_9, status: "pending")
        UserMatch.create(user: females[1], match: match_9, status: "pending")
  end

  def my_matches(current_user)
    matches.joins(:user_matches).where(user_matches: { user: current_user })
  end

end
