class Admin::PagesController < AdminController
  make_resourceful do
    actions :all
    
    response_for :create, :update, :destroy do
      redirect_to admin_area_pages_path(@area)
    end
    
    belongs_to :area
  end
  
  def update 
    @page = Page.find(params[:id])
    @page.update_attributes(page_params)
    redirect_to admin_area_pages_path(@area)
  end
  
  private
  
  def page_params
    params.require(:page).permit(:name, :body)
  end
  
end
