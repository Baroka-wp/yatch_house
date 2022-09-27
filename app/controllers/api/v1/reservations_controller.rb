class Api::V1::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all.order('id desc')
    render json: { data: @reservations }, status: :ok
  end

  def show
    @reservation = Reservation.find(params[:id])
    render json: { data: @reservation }, status: :ok
  end

  def new; end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :status, :house_id, :user_id, :total)
  end
end
