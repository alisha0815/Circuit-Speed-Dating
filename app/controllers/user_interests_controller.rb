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
        params.require(:user_interest).permit(:name, :address, :age, :gender, :height)
    end
end
