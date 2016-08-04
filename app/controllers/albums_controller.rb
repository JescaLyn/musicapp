class AlbumsController < ApplicationController
  before_action only: [:edit, :show, :update, :destroy] { ensure_exists "Album" }
  before_action :ensure_current_user

  def new
    @album = Album.new(band_id: params[:band_id])
    @band = Band.find_by(id: params[:band_id])
    render :new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to album_url(@album)
    else
      flash.now[:errors] = @album.errors.full_messages
      render :new
    end
  end

  def edit
    @album = Album.find_by(id: params[:id])
    render :edit
  end

  def show
    @album = Album.find_by(id: params[:id])
    @tracks = @album.tracks
    @band = @album.band
    render :show
  end

  def update
    @album = Album.find_by(id: params[:id])
    @album.update(album_params)
    redirect_to album_url(@album)
  end

  def destroy
    @album = Album.find_by(id: params[:id])
    @band = @album.band
    @album.destroy
    redirect_to album_url(@band)
  end

  def set_band

  end

  private

  def album_params
    params.require(:album).permit(:name, :band_id, :kind, :year)
  end
end
