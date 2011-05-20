class TweetsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @user = User.find(params[:user_id])
    @tweet = @user.tweets.build(params[:tweet])
    @user.save
    refresh
  end

  def edit
  end

  def update
  end

  def destroy
    @user = User.find(params[:user_id])
    @tweet = @user.tweets.find params[:id]
    @tweet.destroy
    refresh
  end
  
  private
    def refresh
      respond_to do |format| #for ajax
        format.html {redirect_to admin_path}#tells the request that it is an html
        format.js do 
          @tweets = @user.tweets
          render :update do |page|
            page.replace_html 'tweets', :partial=>'/admin/tweet' 
            page[:new_tweet].reset
          end
        end #communicates with comments/create.rjs (js because of this Processing 
            #by CommentsController#create as JS in the logs
      end
    end
end
