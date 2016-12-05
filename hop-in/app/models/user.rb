class User < ApplicationRecord
	has_secure_password

	has_many :owned_vehicles, class_name: 'Vehicle', source: :vehicle
	has_many :vehicle_reservations, class_name: 'Reservation', source: :reservation, through: :owned_vehicles
	has_many :passengers, class_name: 'User', source: :user, through: :owned_vehicles

	has_many :trips, class_name: 'Reservation', source: :reservation
	has_many :rented_vehicles, class_name: 'Vehicle', source: :vehicle, through: :trips
	has_many :owners, class_name: 'User', source: :user, through: :trips

	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
	validates :password_confirmation, presence: true
	validates :first_name, :last_name, :phone_number, :email, :date_of_birth, presence: true
end
