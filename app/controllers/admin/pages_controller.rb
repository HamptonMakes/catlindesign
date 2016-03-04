class Admin::PagesController < AdminController
  make_resourceful do
    actions :all
    
    response_for :create, :update, :destroy do
      redirect_to admin_area_pages_path(@area)
    end
    
    belongs_to :area
  end
end
