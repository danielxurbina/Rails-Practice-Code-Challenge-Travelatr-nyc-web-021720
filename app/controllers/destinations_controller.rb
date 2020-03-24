class DestinationsController < ApplicationController
  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.create(destination_params)

    if @destination.vaild?
      redirect_to @destination
    else
      render :new
    end
  end

  def index
    @destination = Destination.find(params[:id])
  end

  def show
    @destination = Destination.find(params[:id])
  end

  private

  def destination_params
    params.require(:destionations).permit(:name, :country)
  end
end
