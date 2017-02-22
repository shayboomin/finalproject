class BoomintravelController < ApplicationController
	def index
		render 'home'
	end

	def login
		@user = User.new
		render 'login' 
	end
	def hotel
		render 'hotel'
	end
	def flight
		render 'flight'
	end
	def confirm
		render 'confirm'
	end
	def profile
		render 'profile'
	end
	def event
		render "event"
	end
end
