class UserInterestsController < ApplicationController
  def new
    @user = current_user
    @user_interest = UserInterest.new
  end

  def create
    @interest = Interest.new(interest_params)

    if @interest.save
      @user_interest = UserInterest.new
      @user_interest.interest_id = @interest.id
      @user_interest.user = current_user
      @user_interest.save
      redirect_to profiles_path
    else
      render :new
    end
  end

  private

  def interest_params
    params.require(:interest).permit(:name, :category)
  end
end
