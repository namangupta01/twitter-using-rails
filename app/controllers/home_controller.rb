class HomeController < ApplicationController
	def tweet
		current_user.tweets.create(content: params[:content])
		redirect_to '/'
	end

  	def like
  	end
end
