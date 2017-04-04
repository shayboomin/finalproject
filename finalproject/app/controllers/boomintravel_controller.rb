class BoomintravelController < ApplicationController

	Expedia.cid = 501048
	Expedia.api_key = '60nn3elg2bfbcs1lsrmqu1l1oo'
	Expedia.shared_secret = '3aaamcg1f416l'
	Expedia.locale = 'en_US'
	Expedia.currency_code = 'USD'
	Expedia.minor_rev = 30
	Expedia.use_signature = true # must be false if using ip whitelisting instead of signature
	# Optional configuration...
	Expedia.timeout = 1 # read timeout in sec
	Expedia.open_timeout = 1 # connection timeout in sec
	# Instentiate api object

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
	def requestHotel
		api = Expedia::Api.new
		# Method to search for a hotel. see http://developer.ean.com/docs/hotel-list/
		
		#  place our parameters in this get_list method 
		response = api.get_list({
				:city => 'Seattle', 
				:stateProvinceCode => 'WA', 
				:countryCode=>"US", 
				:arrivalDate => "09/04/2017", 
				:departureDate=>"09/05/2017", 
			})

		puts '/' *80
		@hotelList = response.body["HotelListResponse"]["HotelList"]["HotelSummary"]
		puts '/' *80
		# render a view with all those hotels on it
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
		render 'event'
	end
end
