class UsersController < ApplicationController
  def index
  	@users = User.all
  	# Active Record will turn the array of users into JSON 
  	render :json => @users
  end

  def show
  	@user = User.find(params[:id])
  	render :json => @user
  end
end
