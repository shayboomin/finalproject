class UsersController < ApplicationController
	def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
      if @user.save
            redirect_to :action => 'profile'
      else
            redirect_to :action => 'home'
      end
end
