class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
    @message = Message.new
    # get user matches for this match
    @user_match = current_user_match
    @other_user_match = other_user_match
    # video chat
    opentok = OpenTok::OpenTok.new ENV['VONAGE_API_KEY'], ENV['VONAGE_API_SECRET']
    @token = opentok.generate_token @match.vonage_session_id, { name: current_user.name }
    # finding event that this match is related to
    @event = @match.event
    # all users of this event
    @users = @event.users
    # => next matches with js
    @my_matches = @event.my_matches(current_user)
    # raise
  end

  def next
    # find the current match
    @match = Match.find(params[:id])
    # find event
    @event = @match.event
    # find next match
    @my_matches = @event.my_matches(current_user).order(:id)
    # find the match index inside my matches
    match_index = @my_matches.index(@match)
    # use match index to find next match
    next_match_index = (match_index + 1) % @my_matches.count

    @next_match = @my_matches[next_match_index]

    # redirect to next match page / STOP at third
    if current_user.my_round % 3 != 0
      redirect_to match_path(@next_match)
      current_user.my_round = current_user.my_round + 1
      current_user.save
    elsif (current_user.my_round % 3).zero?
      current_user.my_round = 1
      current_user.save
      redirect_to events_path
    end
  end

  def mutual_matches
    @match = Match.find(params[:match]) if params[:match]
    @message = Message.new
    # all matches belonging to user
    @contacts = []
    @my_user_matches = UserMatch.where(user: current_user)
    @user_matches = UserMatch.all

    @user_matches.each do |user_match|
      @my_user_matches.each do |my_user_match|
        if user_match.match_id == my_user_match.match_id
          if user_match.status == "accept" && my_user_match.status == "accept"
            @contacts << user_match if user_match.user != current_user
            #raise
          end
        end
      end
    end
  end

  private

  def current_user_match
    # find current user user_match
    user_matches = @match.user_matches
    user_matches.select do |user_match|
      return user_match if user_match.user_id == current_user.id
    end
  end

  def other_user_match
    # find current user user_match
    user_matches = @match.user_matches
    user_matches.select do |user_match|
      return user_match if user_match.user_id != current_user.id
    end
  end
end
