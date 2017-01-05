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
    @vehicle = Vehicle.find(params[:vehicle_id])
	end

	def create
		@availability = Availability.new(availability_params)
    @availability.vehicle = Vehicle.find(params[:vehicle_id])

    if @availability.save
      redirect_to vehicle_availabilities_path(@vehicle, @availability)
		else
			render :new
		end
	end

	def update
		@availability = Availability.find(params[:id])
    @availability.vehicle = Vehicle.find(params[:vehicle_id])

		if @availability.update_attributes(availability_params)
      redirect_to vehicle_availabilities_path(@vehicle, @availability)
		else
			render :edit
		end
	end

	def destroy
		@availability = Availability.find(params[:id])
		@availability.destroy
		redirect_to vehicle_availabilities_path(@vehicle)
	end

	private
	def availability_params
		params.require(:availability).permit(:start_time, :end_time, :weekday, :vehicle_id)
	end

	def load_vehicle
		@vehicle = Vehicle.find(params[:vehicle_id])
	end

end
