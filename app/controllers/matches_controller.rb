class MatchesController < ApplicationController
  def create
    @events = Event.all # 1 x event

    @events.each do |event|
      six_users = event.bookings_user_id # all 6 users for this event

      @match_1 = Match.create(event_id: event)
      @match_2 = Match.create(event_id: event)
      @match_3 = Match.create(event_id: event)
      @match_4 = Match.create(event_id: event)
      @match_5 = Match.create(event_id: event)
      @match_6 = Match.create(event_id: event)
      @match_7 = Match.create(event_id: event)
      @match_8 = Match.create(event_id: event)
      @match_9 = Match.create(event_id: event)

      user1 = six_users[0] # male
      user2 = six_users[1] # male
      user3 = six_users[2] # male
      user4 = six_users[3] # female
      user5 = six_users[4] # female
      user6 = six_users[5] # female

      # create user_matches
      user_matching(user1, user2, user3, user4, user5, user6)
    end
  end

  def user_matching(*)
    UserMatch.create(user_id: user1, match_id: @match_1, status: "pending")
    UserMatch.create(user_id: user1, match_id: @match_2, status: "pending")
    UserMatch.create(user_id: user1, match_id: @match_3, status: "pending")

    UserMatch.create(user_id: user2, match_id: @match_4, status: "pending")
    UserMatch.create(user_id: user2, match_id: @match_5, status: "pending")
    UserMatch.create(user_id: user2, match_id: @match_6, status: "pending")

    UserMatch.create(user_id: user3, match_id: @match_7, status: "pending")
    UserMatch.create(user_id: user3, match_id: @match_8, status: "pending")
    UserMatch.create(user_id: user3, match_id: @match_9, status: "pending")

    UserMatch.create(user_id: user1, match_id: @match_1, status: "pending")
    UserMatch.create(user_id: user1, match_id: @match_4, status: "pending")
    UserMatch.create(user_id: user1, match_id: @match_7, status: "pending")

    UserMatch.create(user_id: user2, match_id: @match_2, status: "pending")
    UserMatch.create(user_id: user2, match_id: @match_5, status: "pending")
    UserMatch.create(user_id: user2, match_id: @match_8, status: "pending")

    UserMatch.create(user_id: user3, match_id: @match_3, status: "pending")
    UserMatch.create(user_id: user3, match_id: @match_6, status: "pending")
    UserMatch.create(user_id: user3, match_id: @match_9, status: "pending")
  end
end




# => Creating a Matching System

# A user books an event (1) through a booking
# ...
# Many users will be assigned to 'said' event (event id: 1)
# To create 1 x match (of 2 people)? Capture all users linked to event 1 (array)
# MATCHING ALGORITHMS (based on profile + interests)
# 2 users (user_1 & user_2) who match / Match.create(event_id: 1)

# => EXAMPLES
# UserMatch.create(user_id: user_1(male1), match_id: 1, status: "pending")
# UserMatch.create(user_id: user_1(male1), match_id: 2, status: "pending")

# UserMatch.create(user_id: user_2(male2), match_id: 3, status: "pending")
# UserMatch.create(user_id: user_2(male2), match_id: 4, status: "pending")

# UserMatch.create(user_id: user_1(female1), match_id: 1, status: "pending")
# UserMatch.create(user_id: user_1(female1), match_id: 3, status: "pending")

# UserMatch.create(user_id: user_1(female2), match_id: 2, status: "pending")
# UserMatch.create(user_id: user_1(female2), match_id: 4, status: "pending")

#
#
#
#
#
#
#
