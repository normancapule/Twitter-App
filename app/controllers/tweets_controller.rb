class TweetsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @user = User.find(params[:user_id])
    @user.tweets.build(params[:tweet])
    @user.save
    redirect_to home_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
