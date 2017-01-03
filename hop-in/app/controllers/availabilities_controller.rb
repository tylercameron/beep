class AvailabilitiesController < ApplicationController
  before_action :load_vehicle
  before_action :current_user

	def index
		@availabilities = Availability.all
	end

	def new
		@availability = Availability.new
		@vehicle = Vehicle.find(params[:vehicle_id])
	end

	def show
		@availability = Availability.find(params[:id])
		@vehicle = Vehicle.find(params[:vehicle_id])
	end

	def edit
		@availability = Availability.find(params[:id])
	end

	def create
		@availability = Availability.new(availability_params)
    # @availability.start_time = DateTime.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i, params[:date][:hour].to_i, params[:date][:minute].to_i, 0, "-05:00")
    # @availability.end_time = @reservation.start_time + 1.hour
    @availability.vehicle = Vehicle.find(params[:vehicle_id])

    if @availability.save
			# redirect_to vehicle_reservation_url(@vehicle, @reservation)
      redirect_to root
		else
			render :new
		end
	end

	def update
		@availability = Availability.find(params[:id])
    # @availability.start_time = DateTime.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i, params[:date][:hour].to_i, params[:date][:minute].to_i)
    # @availability.end_time = @reservation.start_time + 1.hour
    @availability.vehicle = Vehicle.find_by(params[:vehicle_id])

		if @availability.update_attributes(availability_params)
			# redirect_to vehicle_reservation_url(@vehicle, @reservation)
      redirect_to root
		else
			render :edit
		end
	end

	def destroy
		@availability = Availability.find(params[:id])
		@availability.destroy
		redirect_to vehicle_reservations_url(@vehicle)
	end

	private
	def availability_params
		params.require(:availability).permit(:start_time, :end_time, :weekday, :vehicle_id)
	end

	def load_vehicle
		@vehicle = Vehicle.find(params[:vehicle_id])
	end

end
