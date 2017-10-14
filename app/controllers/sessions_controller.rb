class SessionsController < ApplicationController

  def login 
    render :'users/login'
  end 

  def create
    @user = User.find_by(name: params[:name])
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end

end 
