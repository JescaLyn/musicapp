class BandsController < ApplicationController
  before_action only: [:update, :edit] { ensure_exists "Band" }
  before_action :ensure_current_user

  def index
    @bands = Band.all
    render :index
  end

  def new
    @band = Band.new
    render :new
  end

  def create
    @band = Band.new(band_params)

    if @band.save
      redirect_to band_url(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
      render :new
    end
  end

  def edit
    @band = Band.find_by(id: params[:id])
    render :edit
  end

  def show
    @band = Band.find_by(id: params[:id])
    @albums = @band.albums
    render :show
  end

  def update
    @band = Band.find_by(id: params[:id])
    @band.update(band_params)
    redirect_to band_url(@band)
  end

  def destroy
    @band = Band.find_by(id: params[:id])
    @band.destroy
    redirect_to bands_url
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end
end
