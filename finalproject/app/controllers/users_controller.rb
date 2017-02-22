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
		if user = User.authenticate(params[:email], params[:password])
			session[:current_user_id] = current_user
			redirect_to 'profile'
		end
	end
	
	def destroy
		session[:current_user_id] = nil
		flash[:notice] = "No input"
		redirect_to 'home'
	    	@user = User.new(user_params)
		if @user.save
			# Handle successful save
			puts 'saving user', @user
			puts '*'*80
			redirect_to '/login'			
		else 
			# handle errors (unique)
			flash[:errors] = @user.errors.full_messages			
			puts '-'*80			
			redirect_to '/login'
		end
	end
	# Login method
	# check the email to see if it is stored in our DB
    #         - if it is stored
    #             - continue login 
    #             - check the password
    #                 - if that matches the account information
    #                     - LOGIN!
    #                 - else 
    #                     - redirect back to main login page and try again
    #         - else 
    #             - redirect back to main login page and try again

	
	def user_params
      params.require(:user).permit(:name, :email, :password)
    end

    private
    def current_user
    	@current_user = session[:current_user_id]
    	User.find_by(id: session[:current_user_id])
    end
end
