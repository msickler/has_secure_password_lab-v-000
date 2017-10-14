class UsersController < ApplicationController

  def new

  end

  def create
    @user = User.new(user_params)
    redirect_to '/new' unless @user.save
    session[:user_id] = @user.id
    redirect_to '/'
  end

  def home
    @user = User.find_by(id: session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
