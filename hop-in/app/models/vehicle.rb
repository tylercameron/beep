class Vehicle < ApplicationRecord
	has_many :reservations
	has_many :passengers, class_name: 'User', through: :reservations
	belongs_to :owner, class_name: 'User'

	validates_presence_of :vehicle_year, :vehicle_make, :vehicle_model, :street_address, :city, :province, :postal_code, :seats

	def available(number_of_passengers, vehicle_id)
		number_of_passengers > 0 && seat_capacity(vehicle_id) >= number_of_passengers
	end

private
	def seat_capacity(vehicle_id)
		Vehicle.where(id: vehicle_id).first.capacity
	end
end
