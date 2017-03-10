class User < ActiveRecord::Base
	has_many :tweets
	has_many :likes
	has_many :followers, class_name: 'FollowMapping' , foreign_key: :followee_id
	has_many :followees, class_name: 'FollowMapping' , foreign_key: :follower_id


	def user_feed 
		byebug
		followee_list = self.followees.pluck(:id)
		byebug
	end
end
