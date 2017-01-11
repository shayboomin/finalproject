class BoomintravelController < ApplicationController
	def index
		render 'home'
	end
	def user
		render 'login' 
	end
	def hotel
		render 'hotel'
	end
	def flight
		render "flight"
	end
end
