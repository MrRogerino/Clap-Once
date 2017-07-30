class UsersController < ApplicationController
	def index
		@users = User.all
		render json: {users: @users}.as_json, status: 201
	end

	def show
		@user = User.find_by(id: params[:id])
		render json: {user: @user}.as_json, status: 201
	end 

	def satori
		render 'satori'
	end

	def rapid
		p gon.user_info
		gon.test = true
		render 'rapid'
	end
end
