class BoomintravelController < ApplicationController
	def index
		render 'home'
	end
	def login
		render 'login' 
	end
	def hotel
		render 'hotel'
	end
	def flight
		render "flight"
	end
	def confirm
		render "confirm"
	end
end
