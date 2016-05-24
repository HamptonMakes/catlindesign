class AdminController < ApplicationController
  layout 'admin'
  
  before_action :authorize
  
  def index
  end
  
  private
  
  def authorize
    puts session[:user_id]
    puts "Authorised with session user id above"
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Please log in."
    end
  end
end