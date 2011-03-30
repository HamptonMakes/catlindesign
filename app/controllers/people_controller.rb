class PeopleController < ApplicationController
  make_resourceful do
    actions :show
  end
  
  def index
    redirect_to Person.find(:first)
  end
  
  def subnav
    current_objects.collect do |person|
      {:partial => "person", :locals => {:person => person}}
    end
  end
  helper_method :subnav
end
