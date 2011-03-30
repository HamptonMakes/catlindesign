class Admin::PeopleController < ApplicationController
  make_resourceful do
    actions :all
    
    response_for :create, :update, :destroy do
      redirect_to admin_people_path
    end
  end
  
 private
  def current_model
    Person
  end
end
