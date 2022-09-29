class Api::V1::HousesController < ApplicationController
  def index
    @houses = House.all
    render json: @houses
  end

  def show
    @house = House.find(params[:id])
    render json: @house
  end

  def new; end

  def create
    @house = House.new(house_params)
    @house.save
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
  end

  def house_params
    params.require(:house).permit(:name, :location, :price, :description, :image)
  end
end
