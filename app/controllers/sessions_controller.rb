class SessionsController < ApplicationController

	def admin_signin
		user = User.find_by(email: params[:email])

	end
	def signin
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:id] = user.id
			puts "*" * 100
			puts "*" * 100
			puts "*" * 100
			puts session[:id]
			puts "*" * 100
			puts "*" * 100
			puts "*" * 100
			flash[:success] = "You Have Successfully Logged In"
			redirect_to "/users"
		else
			flash[:danger] = "Invalid Email or Password"
			redirect_to "/users/signin"
		end
	end

	def signout
		if session[:id]
			session[:id] = nil
			flash[:success] = "You Have Succussfully Logged Out"
			redirect_to "/users"
		end

	end
end
