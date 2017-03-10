class HomeController < ApplicationController
  before_action :authenticate_user
  def index
    if user_signed_in?
      byebug
      current_user.user_feed
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
      @users=User.all.where("id != ?",current_user.id)
      #reject { |user| user.id == current_user.id }
    end
    def follow
      follower_new=FollowMapping.new
      follower_new.followee_id=params[:followee_id].to_i
      follower_new.follower_id=current_user.id
      follower_new.save
      redirect_to '/find_people'
    end
    def unfollow
      follower = FollowMapping.all.where(followee_id: params[:followee_id].to_i, follower_id: current_user.id).first
      follower.destroy
      redirect_to '/find_people'
    end
end