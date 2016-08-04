class TracksController < ApplicationController
  before_action only: [:edit, :show, :update, :destroy] { ensure_exists "Track" }
  before_action :ensure_current_user

  def new
    @track = Track.new(album_id: params[:album_id])
    @album = Album.find_by(id: params[:album_id])
    render :new
  end

  def create
    @track = Track.new(track_params)

    if @track.save
      redirect_to track_url(@track)
    else
      flash.now[:errors] = @track.errors.full_messages
      render :new
    end
  end

  def edit
    @track = Track.find_by(id: params[:id])
    render :edit
  end

  def show
    @track = Track.find_by(id: params[:id])
    @album = @track.album
    @notes = @track.notes
    render :show
  end

  def update
    @track = Track.find_by(id: params[:id])
    @track.update(track_params)
    redirect_to track_url(@track)
  end

  def destroy
    @track = Track.find_by(id: params[:id])
    @album = @track.album
    @track.destroy
    redirect_to album_url(@album)
  end

  private

  def track_params
    params.require(:track).permit(:name, :album_id, :ord, :kind, :lyrics)
  end
end
