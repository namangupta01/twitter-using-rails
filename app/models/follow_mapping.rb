class FollowMapping < ActiveRecord::Base
	belongs_to :followers, class_name: 'User' , foreign_key: :followee_id  
	belongs_to :followees, class_name: 'User' , foreign_key: :follower_id
end
