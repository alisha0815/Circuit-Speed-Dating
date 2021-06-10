class UserInterestsController < ApplicationController
  def new
    @user_interest = UserInterest.new
  end

  def create
    @user = current_user
    @interests = Interest.where(id: params[:user_interest][:interest])

    @interests.each do |interest|
      user_interest = UserInterest.new(user: @user, interest: interest)
      user_interest.save
    end

    redirect_to root_path
  end

  private

  def interest_params
    params.require(:interest).permit(:category, :name)
  end
end
