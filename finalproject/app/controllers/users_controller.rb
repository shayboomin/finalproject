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
		    else
		    	redirect_to :action => 'home'
		    end
	end
	
	def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
