class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end
	def new
    		@user = User.new
  	end

	def create
	    	@user = User.new(user_params)
		if @user.save
			# Handle successful save
			puts 'saving user', @user.inspect
			puts '*'*80
			redirect_to '/login'			
		else
			# handle errors (unique)
			puts 'not saving user', @user.errors.full_messages			
			puts '-'*80			
			redirect_to '/login'
		end
	end
	
	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end
