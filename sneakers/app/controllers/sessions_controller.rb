class SessionsController < ApplicationController
  skip_before_action :require_login, :only => [:new, :create]

  def create
    @user = User.find_by_email(params[:email])
    if @user
      sign_in(@user)
      flash[:success] = "Successfully signed in"
      redirect_to user_path(@user)
    else
      flash.now[:error] = "Failed to sign in"
      render :new
    end
  end

  def destroy
    sign_out
    flash[:success] = "Signed out"
    redirect_to root_url
  end
end
