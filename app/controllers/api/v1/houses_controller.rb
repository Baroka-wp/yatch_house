class Api::V1::HousesController < ApplicationController
  def index
    @houses = House.all
    render json: @houses
  end

  def show
    @house = House.find(:params)
    render json: @house
  end

  def new; end

  def create
    @house = House.new(house_params)
    @house.save
  end

  def destroy
    @house = House.find(:params)
    @house.destroy
  end
end
