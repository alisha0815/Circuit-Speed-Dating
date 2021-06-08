class UserInterestsController < ApplicationController
  def new
    @user = current_user
    @interest = Interest.new
  end

  def create
    @interest = Interest.new(interest_params)

    if @interest.save
      @user_interest = UserInterest.new
      @user_interest.interest_id = @interest.id
      @user_interest.user = current_user
      @user_interest.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def interest_params
    params.require(:interest).permit(:business_industry, :entertaiment, :family_relation,
                                     :fitness_wellness, :food_drink, :hobby_activity,
                                     :shopping_fashion, :sport_outdoor, :technology)
  end
end
