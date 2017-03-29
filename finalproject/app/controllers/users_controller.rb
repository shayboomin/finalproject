class UsersController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => :login
	def show
		@user = User.find(params[:id])
	end

	def new
    	@user = User.new
  	end

	def create
	    @user = User.new(user_params)
		if @user.save
			puts '/'*80
			puts @user.inspect
			# Handle successful save
			redirect_to '/login'						
		else
			flash[:errors] = @user.errors.full_messages	
			redirect_to '/login'
		end

	end
	
	def destroy
		session[:current_user_id] = nil
		flash[:notice] = "No input"
		redirect_to 'home'
	end

	def login
		user = User.where(email: params[:emaillogin], password: params[:passwordlogin]) 
		puts user[0].nil?
		puts ']'*80
		if not user[0].nil?
			session[:current_user] = user
			redirect_to '/profile'
		else
			redirect_to '/login'
		end
	end
	def logout
		session[:current_user] = nil
		redirect_to '/'
	end
	
	def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    private
    def current_user
    	@current_user = session[:current_user_id]
    	User.find_by(id: session[:current_user_id])
    end
end
