class LikesController < ApplicationController

  def create
    @like = Like.new
    @like.asker = current_user
    @like.receiver = User.find(params[:profile_id])
    @user = @like.receiver

    if @like.save
      #redirect_to  profile_path(@like.receiver) 
    end  
  end
end
