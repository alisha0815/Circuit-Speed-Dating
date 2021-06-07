class UserInterestsController < ApplicationController

    def new 
        @user_interest = UserInterest.new
    end

    def create 
        @user_interest = UserInterest.new(params[:get_user_interests])
        @user_interest.save
    end

    private

    def get_user_interests 
        params.require(:user_interest).permit(:business_industry, :entertaiment, :family_relation, :fitness_wellness, :food_drink, :hobby_activity, :shopping_fashion, :sport_outdoor, :technology)
    end
end
