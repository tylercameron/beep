class VehiclesController < ApplicationController

	def index
		@vehicles = Vehicle.all
	end

	def new
		@vehicle = Vehicle.new
	end

	def create
		@vehicle = Vehicle.new(vehicle_params)

		if @vehicle.save
			redirect_to vehicle_url(@vehicle)
		else
			render :new
		end
	end

	def show
		@vehicle = Vehicle.find(params[:id])
	end

	def edit
		@vehicle = Vehicle.find(params[:id])
	end

	def update
		@vehicle = Vehicle.find(params[:id])

		if @vehicle.update_attributes(vehicle_params)
			redirect_to vehicle_url(@vehicle)
		else
			render :edit
		end
	end

	def destroy
		@vehicle = Vehicle.find(params[:id])
		@vehicle.destroy
		redirect_to vehicles_url
	end

	private

	def vehicle_params
		params.require(:vehicle).permit(:vehicle_year, :vehicle_make, :vehicle_model, :street_address, :city, :province, :postal_code, :seats)
	end
end
