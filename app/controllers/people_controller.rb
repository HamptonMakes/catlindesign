class PeopleController < ApplicationController
  make_resourceful do
    actions :show
  end
  
  def index
    redirect_to Person.find(:first)
  end
end
