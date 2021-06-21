class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    @message = Message.new

    # finding event that this match is related to
    @event = @match.event
    # all users of this event
    @users = @event.users
    # => next matches with js
    @my_matches = @event.my_matches(current_user)
  end

  def next
    # find the current match
    @match = Match.find(params[:id])
    #raise
    # find event
    @event = @match.event
    # find next match
    @my_matches = @event.my_matches(current_user).order(:id)
    # find the match index inside my matches
    #binding.pry
    match_index = @my_matches.index(@match)
    # use match index to find next match
    next_match_index = (match_index + 1) % @my_matches.count

    @next_match = @my_matches[next_match_index]
    # redirect to next match page
    redirect_to match_path(@next_match)
  end
end
