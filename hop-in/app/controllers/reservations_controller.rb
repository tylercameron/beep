class ReservationsController < ApplicationController
before_action :load_vehicle
before_action :current_user

	def index
		@reservations = Reservation.all
	end

	def new
		@reservation = Reservation.new
		@vehicle = Vehicle.find(params[:vehicle_id])
	end

	def show
		@reservation = Reservation.find(params[:id])
		@vehicle = Vehicle.find(params[:vehicle_id])
	end

	def edit
		@reservation = Reservation.find(params[:id])
	end

	def create
		@reservation = Reservation.new(reservation_params)
    @reservation.start_time = DateTime.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i, params[:date][:hour].to_i, params[:date][:minute].to_i, 0, "-05:00")
    @reservation.end_time = @reservation.start_time + 1.hour
    @reservation.vehicle = Vehicle.find(params[:vehicle_id])
		@reservation.passenger = current_user

    if @reservation.save
			redirect_to vehicle_reservation_url(@vehicle, @reservation)
		else
			render :new
		end
	end

	def update
		@reservation = Reservation.find(params[:id])
    @reservation.start_time = DateTime.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i, params[:date][:hour].to_i, params[:date][:minute].to_i)
    @reservation.end_time = @reservation.start_time + 1.hour
    @reservation.vehicle = Vehicle.find(params[:vehicle_id])

		if @reservation.update_attributes(reservation_params)
			redirect_to vehicle_reservation_url(@vehicle, @reservation)
		else
			render :edit
		end
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to '/user'
	end

	private
	def reservation_params
		params.require(:reservation).permit(:start_time, :end_time, :start_location, :destination, :comment, :vehicle_id, :passenger_id, :seats)
	end

	def load_vehicle
		@vehicle = Vehicle.find(params[:vehicle_id])
	end
end
