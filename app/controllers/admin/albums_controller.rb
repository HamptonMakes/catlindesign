class Admin::AlbumsController < AdminController
  def index
    @albums = Album.all
  end
  
  def new 
    @album = Album.new
  end
  
  def create
    @album = Album.create(album_params)
    redirect_to admin_album_path(@album)
  end
  
  def show
    @album = Album.find(params[:id])
    @picture = Picture.new
  end
  
  def edit
    @album = Album.find(params[:id])
  end
  
  def update 
    @album = Album.find(params[:id])
    @album.update_attributes(album_params)
    redirect_to admin_album_path(@album)
  end
  
  def destroy
    Album.find(params[:id]).destroy
    redirect_to admin_albums_path
  end
  
  private
  
  def album_params
    params.require(:album).permit(:name)
  end
end