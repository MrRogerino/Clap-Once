class UsersController < ApplicationController
	def index

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
