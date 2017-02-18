class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end
	def new
    		@user = User.new
  	end

	def create
<<<<<<< HEAD
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
	
	def destroy
		session[:current_user_id] = nil
		flash[:notice] = "No input"
		redirect_to 'home'
=======
	    	@user = User.new(user_params)
		if @user.save
			# Handle successful save
			puts 'saving user', @user.inspect
			puts '*'*80
			redirect_to '/login'			
		else 
		
			<% if flash[:errors] %>
			<% flash[:errors].each do |error| %>
				<p><%= error %></p>
			<% end %>
		<% end %>
		
		<%= simple_form_for @user do |f| %>
			<%= f.input :name %>
			<%= f.input :alias %>
			<%= f.input :email %>
			<%= f.input :password %>
			<%= f.input :password_confirmation %>
			<%= f.submit 'Register', :class => 'btn btn-danger' %>
		<% end %>

			# handle errors (unique)
			puts 'not saving user', @user.errors.full_messages			
			puts '-'*80			
			redirect_to '/login'
		end
	end
>>>>>>> 2372f8c3ea9a29fdbdd089487d58acce10d1c6f0

	def user_params
      params.require(:user).permit(:name, :email, :password)
    end

    private
    def current_user
    	@current_user = session[:current_user_id]
    	User.find_by(id: session[:current_user_id])
    end
end
