class LocationsController < ApplicationController

  def index
    @locations = Location.all
    render json: @locations
  end

  def create
    @location = Location.create(location_params)
  end

  def update
    @location = Location.find_by(params[:id])
  end


  private

  def location_params
    params.require(:location).permit(:name)
  end

end
