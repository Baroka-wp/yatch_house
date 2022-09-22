class Api::V1::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render json: { data: @reservations }, status: :ok
  end

  def show
    @reservation = Reservation.find(params[:id])
    render json: { data: @reservation }, status: :ok
  end

  def new; end

  def create
    @reservation = current_user.reservations.new(reservation_params)
    @reservation.save
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :status)
  end
end
