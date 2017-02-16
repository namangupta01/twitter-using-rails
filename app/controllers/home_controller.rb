class HomeController < ApplicationController
  before_action :authenticate_user

  
  def index
    if user_signed_in?
      @tweets=Tweet.includes(:user , :likes).all
    else
      redirect_to '/signin_get'
    end
  end 

  def tweet
		current_user.tweets.create(content: params[:content])
		redirect_to '/'
	end

  	def like
  		tweet_id=params[:tweet_id]
  		like=current_user.likes.where(tweet_id: tweet_id).first
  		if like
  			like.destroy
  		else
  			current_user.likes.create(tweet_id: tweet_id)
  		end
  		redirect_to '/'
  	end


    def find_people
      @users=User.all
    end

end
