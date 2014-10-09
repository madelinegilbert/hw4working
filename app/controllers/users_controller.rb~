# This file is app/controllers/users_controller.rb
class UsersController < ApplicationController

  def index
  end

  def show
  end

  def new
    # default: render 'new' template
  end

  def create
   if User.exists?(params[:user])
      flash[:notice] = "Sorry, that user-id is taken. Try Again!"
      redirect_to new_user_path
   else
      @user = User.create_user!(params[:user])
      flash[:notice] = "Welcome #{@user.user_id}. Your account has been created."
      redirect_to login_path
   end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
