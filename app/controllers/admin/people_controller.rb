class Admin::PeopleController < AdminController
  make_resourceful do
    actions :all
    
    response_for :create, :update, :destroy do
      redirect_to admin_people_path
    end
  end
  
  private
  
  def object_parameters
    params.require(:person).permit(:name, :position, :bio, :certifications)
  end
end
