class HomeController < ApplicationController

  def index
    @tweets = Tweet.all
    if user_signed_in?
        redirect_to admin_path
    end
  end

end
