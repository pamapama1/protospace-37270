class PostsController < ApplicationController
  def index  # indexアクションを定義した
    @user = User.all
  end
  def new#create
    @user = User.new
  end
  def create
    User.create(create_params)
  end
end
