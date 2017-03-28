class AuthenticationSystemController < ApplicationController
	
	# def signin_get
	# end

	# def signup_get
	# end

	# def sign_up
	# 	email=params[:email]
	# 	name=params[:name]
	# 	password=params[:password]
	# 	user=User.find_by_email(email)
	# 	unless user
	# 		user=User.new
	# 		user.name=name
	# 		user.email=email
	# 		user.password=password
	# 		user.save
	# 		session[:user_id]=user.id
	# 		return redirect_to '/'
	# 	end
	# 	redirect_to 'signup_get'
	# end

	# def sign_in
	# 		email=params[:email]
	# 		password=params[:password]
	# 		user=User.find_by_email(email)
	# 		if user 
	# 			if password==user.password
	# 				session[:user_id]=user.id
	# 				redirect_to '/'
	# 			else
	# 				redirect_to '/signin_get'
	# 			end
	# 		else
	# 			return redirect_to '/signup_get'
	# 		end 
	# 	end

	# def logout 
	# 	session[:user_id]=nil
	# 	redirect_to '/'
	# end

end