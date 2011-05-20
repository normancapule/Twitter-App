class TweetsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @user = User.find(params[:user_id])
    @user.tweets.build(params[:tweet])
    @user.save
    redirect_to admin_path
  end

  def edit
  end

  def update
  end

  def destroy
    @user = User.find(params[:user_id])
    @tweet = @user.tweets.find params[:id]
    @tweet.destroy
    redirect_to admin_path
  end

end
