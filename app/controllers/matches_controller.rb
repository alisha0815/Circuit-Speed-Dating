class MatchesController < ApplicationController
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
