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
		Vehicle.find_by(id: vehicle_id).seats #- reservation_at(time).sum(:seats)
	end

	# def reservation_at(time)
	# 	reservations.where(start_time: time.beginning_of_hour..time.end_of_hour)
	# end

	def reserved?(time, vehicle_id)
		Vehicle.where(id: vehicle_id).reservation_at(time)
	end

end
