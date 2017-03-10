class User < ActiveRecord::Base
	has_many :tweets
	has_many :likes
	has_many :followers, class_name: 'FollowMapping' , foreign_key: :followee_id
	has_many :followees, class_name: 'FollowMapping' , foreign_key: :follower_id


	def user_feed 
		followee_list = self.followees.pluck(:followee_id) + [self.id]
		feed_tweets = Tweet.includes(:user , :likes).where("user_id in (?)",followee_list)
		feed_tweets
	end
end
