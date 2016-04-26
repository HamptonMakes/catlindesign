class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # This is to help with using one controller (Area) for three
  # different pages (Contact, Information, Awards)
  def page_type
    if @area
      return @area.name.downcase
    else
      return params[:controller]
    end
  end
  helper_method :page_type
  
end
