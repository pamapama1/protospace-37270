class UsersController < ApplicationController
  def show
   @user = User.find (params[:id])
    #@user = User.find(params :id)
    #@tweets = user.tweets
  end

  private
  def prototype_params
    params.require(:user).permit(:title, :catch_copy, :concept, :user,:id, :image).merge(user_id: user.id)
  end
end
