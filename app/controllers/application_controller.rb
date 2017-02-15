class ApplicationController < ActionController::Base
  	# Prevent CSRF attacks by raising an exception.
  	# For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception

	def user_signed_in?
  		!session[:user_id].nil?
  	end

	def current_user
		User.find_by_id(session[:user_id])
	end


end
