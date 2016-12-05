class User < ApplicationRecord
	has_secure_password

	has_many :owned_vehicles, class_name: 'Vehicle'
	has_many :vehicle_reservations, class_name: 'Reservation', through: :owned_vehicles
	has_many :passengers, class_name: 'User', through: :owned_vehicles


	has_many :trips, class_name: 'Reservation'
	has_many :rented_vehicles, class_name: 'Vehicle', through: :trips
	has_many :owners, class_name: 'User', through: :trips
end
