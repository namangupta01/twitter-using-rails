class ApplicationController < ActionController::Base
  	# Prevent CSRF attacks by raising an exception.
  	# For APIs, you may want to use :null_session instead.
  	# protect_from_forgery with: :exception
  	 helper_method :current_user, :user_signed_in?
  	
	def user_signed_in?
  		!session['warden.user.user.key'].nil?
  	end

	def current_user
		User.find_by_id(session['warden.user.user.key'])
	end

  def authenticate_user
    unless user_signed_in?
      redirect_to '/signin_get'
    end
  end


end
