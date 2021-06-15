class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    @message = Message.new

    # finding event that this match is related to
    @event = @match.event

    # all users of this event
    @users = @event.users

    # all matches of this event
    @matches = Match.where("event_id = ?", @event)

    # all user_matches of this event
    @user_matches = []
    @matches.each do |match|
      user_match = UserMatch.where("match_id = ?", match)
      @user_matches << user_match
    end

    # current_user matches (ids)
    @my_matches = []
    current_user.user_matches.each do |user_match|
      if user_match.match != @match
        @my_matches << user_match.match
      end
      #raise
    end

  end
end
