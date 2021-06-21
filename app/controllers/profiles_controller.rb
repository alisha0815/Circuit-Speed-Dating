class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
    if params[:gender] == "female"
      @users = User.females
    elsif params[:gender] == "male"
      @users = User.males
    else
      @users = User.all.reject{ |user| user == current_user}
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:personalized_trainer).permit(:name, :description, :age, :gender, :height, :address, photos: [])
  end
end
