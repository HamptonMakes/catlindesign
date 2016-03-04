class Admin::PicturesController < AdminController
  
  def create
    picture = current_album.pictures.create(picture_params)
    redirect_to admin_album_path(picture.album)
  end
  
  def destroy
    picture = Picture.find(params[:id])
    picture.destroy
    redirect_to admin_album_path(picture.album)
  end
  
  def current_album
    Album.find(params[:album_id])
  end
  
  private
  
  def picture_params
    params.require(:picture).permit(:photo, :description)
  end
end