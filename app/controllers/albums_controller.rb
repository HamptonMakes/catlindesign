class AlbumsController < ApplicationController
  def index
    @albums = Album.list
  end
  
  def show
    @album = Album.get(params[:id])
  end
end