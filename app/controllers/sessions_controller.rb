class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_path
    else
      redirect_to login_url, alert: "Incorrect username or password."
    end
  end

  def destroy
    # puts "LOGGING OUT"
    # cookies.delete :_catlindesign_session
    reset_session
    # puts "Session user_id = " + session[:user_id]
    redirect_to root_path
  end
end
