class Admin::AreasController < ApplicationController
  make_resourceful do
    actions :index, :edit, :update
    
    response_for :update do
      redirect_to admin_areas_path
    end
  end
end
