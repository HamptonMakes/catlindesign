class PagesController < ApplicationController
  make_resourceful do
    actions :index, :show
    
    belongs_to :area
  end
  
  def subnav
    @area.pages.collect do |page|
      {:partial => "page", :locals => {:page => page}}
    end
  end
  helper_method :subnav
end
