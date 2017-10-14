class UsersController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.new(user_params).save
  end

  def homepage
    render: homepage
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
