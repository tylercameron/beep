class UsersController < ApplicationController
  before_action :current_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
    render :new, layout: 'homepage'
  end

  def create
    @user = User.new(user_params)
    @user.date_of_birth = Date.new(params[:date][:year].to_i, params[:date][:month].to_i,params[:date][:day].to_i)
    if @user.save
      session[:user_id] = @user.id
      redirect_to vehicles_url
    else
      render :new
    end
  end

  def show
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_url(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end

  private
  def user_params()
    params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :date_of_birth, :password, :password_confirmation)
  end
end
