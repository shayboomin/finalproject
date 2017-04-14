class BoomintravelController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => :requestHotel

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
		#   Parameters: {"city"=>"Bellevue", "checkIn"=>"2018-01-01", "checkOut"=>"2018-01-02"}
		checkIn = Date.parse(params["checkIn"]).strftime("%m/%d/%Y")
		checkOut = Date.parse(params["checkOut"]).strftime("%m/%d/%Y")
		response = api.get_list({
				:city => params["city"],
				:countryCode=>"US", 
				:arrivalDate => checkIn, 
				:departureDate=> checkOut, 
			})
		
		puts '/' *80
		@hotelList = response.body["HotelListResponse"]["HotelList"]["HotelSummary"]
		@hotelList.each { |hotel| puts hotel["name"]; puts hotel["city"] }	
		puts '/' *80
		# render a view with all those hotels displayed
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
	def requestHotels
		render 'search'
	end
end
