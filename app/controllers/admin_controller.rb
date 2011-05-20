class AdminController < ApplicationController
  before_filter :authenticate_user!
  def index
    @user = current_user
    @tweets = @user.tweets
    @tweet = Tweet.new
  end

end
