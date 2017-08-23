class UsersController < ApplicationController
	def index
		@Users = User.all
	end

	def edit
		@Users = User.find(params[:id])
		puts @Users.inspect
	end

	def update
		@Users = User.find(params[:id])
		@Users.update_attributes(username: params[:user][:username], password: params[:user][:password], email: params[:user][:email])
		redirect_to '/profile'
	end

	def destroy
		@Users = User.find(params[:id])
		@users.destroy
		redirect_to 'index'
	end

end
