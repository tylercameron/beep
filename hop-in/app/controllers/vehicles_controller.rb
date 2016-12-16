class VehiclesController < ApplicationController
	before_action :current_user, only: [:create, :update, :destroy]

	def index
		@vehicles = Vehicle.all
		#if search render results else render vehicles.all
		if params[:search]
			@vehicles = Vehicle.search(params[:search])
		else
			@vehicles = Vehicle.all
		end


	end

	def new
		@vehicle = Vehicle.new
	end

	def create
		@vehicle = Vehicle.new(vehicle_params)
		@vehicle.owner_id = current_user.id

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
		params.require(:vehicle).permit(:vehicle_year, :vehicle_make, :vehicle_model, :street_address, :city, :province, :postal_code, :seats, :owner_id, :image)
	end

end
