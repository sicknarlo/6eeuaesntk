class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome, new user!"
      redirect_to user_shoes_path
    else
      flash.now[:error] = "Something went wrong."
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end
end