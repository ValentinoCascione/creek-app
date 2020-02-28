class CreeksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @creeks = Creek.all
    # For geocoding
      @creeks_coordinates = Creek.geocoded #return creeks with their coordinates
      @markers = @creeks_coordinates.map do |creek|
        {
          lat: creek.latitude,
          lng: creek.longitude,
          image_url: helpers.asset_url('palm-marker.png')
        }
      end
    #--- end
  end

  def show
    @creek = Creek.find(params[:id])
  end

  def mycreeks
    if user_signed_in?
      @user = current_user.id
      @creeks = Creek.all.where(user_id: @user)
      # For geocoding
        @creeks_coordinates = Creek.geocoded.where(user_id: @user) #return creeks with their coordinates
        @markers = @creeks_coordinates.map do |creek|
          {
            lat: creek.latitude,
            lng: creek.longitude,
            image_url: helpers.asset_url('palm-marker.png')
          }
        end
      #--- end
    else
      redirect_to '/'
    end
  end

  def mycreek
    if user_signed_in?
      @user = current_user.id
      @creek = Creek.find(params[:id])
    else
      redirect_to '/'
    end
  end

  def destroy
    @creek = Creek.find(params[:id])
    if @creek.user_id == current_user.id
      @creek.destroy
    end
    redirect_to mycreeks_path
  end

  def new
    @creek = Creek.new
  end

  def create
    @user = current_user
    @creek = Creek.new(params.require(:creek).permit(:title, :available, :country, :city, :price, :description, :capacity, :photo))
    @creek.user_id = @user.id
    if @creek.save
      redirect_to mycreeks_path
    else
      render :new
    end
  end

  def edit
    @creek = Creek.find(params[:id])
  end

  def update
    @creek = Creek.find(params[:id])
    if @creek.user_id == current_user.id
      @creek.update(params.require(:creek).permit(:title, :country, :city, :available, :price, :description, :capacity, :photo))
    end
    redirect_to mycreeks_path
  end

end
