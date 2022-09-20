class Api::V1::ReservationsController < ApplicationController
    def index
        @reservations=Reservation.all
        render json: @reservations
    end

    def show
        @reservation=Reservation.find(:params)
        render json: @reservation
    end

    def new
    end
    
    def create
        @reservation=current_user.reservations.new(reservation_params)
        @reservation.save
    end
    
    def destroy
        @reservation=Reservation.find(:params)
        @reservation.destroy  
    end
end
