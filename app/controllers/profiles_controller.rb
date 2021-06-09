class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:personalized_trainer).permit(:name, :description, :age, :gender, :height, :address, photos: [])
  end
end
