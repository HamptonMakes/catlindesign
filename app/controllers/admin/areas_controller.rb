class Admin::AreasController < AdminController
  make_resourceful do
    actions :index, :edit, :update
    
    response_for :update do
      redirect_to admin_areas_path
    end
  end
  
  def update 
    @area = Area.find(params[:id])
    @area.update_attributes(area_params)
    redirect_to admin_areas_path()
  end
  
  private
  
  def area_params
    params.require(:area).permit(:name, :body)
  end
  
end
