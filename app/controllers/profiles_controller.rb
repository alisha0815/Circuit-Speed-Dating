class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  before_action :set_user, only: [:update]

  def index
    @users = User.all
  end

  def show
    @users = User.all
    # @user = current_user
  end

  def edit
    @user = current_user
  end


end
