class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user
      redirect_to vehicles_url, alert: "You are now logged In :)"
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_url, alert: "You are logged out!"
  end
end
