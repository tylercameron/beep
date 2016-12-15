class User < ApplicationRecord
	has_secure_password
	#owner
	has_many :owned_vehicles, class_name: 'Vehicle', foreign_key: :owner_id
	has_many :vehicle_reservations, class_name: 'Reservation', source: :reservations, through: :owned_vehicles, foreign_key: :owner_id
	#passenger
	has_many :trips, class_name: 'Reservation', foreign_key: :passenger_id
	has_many :rented_vehicles, class_name: 'Vehicle', source: :vehicle, through: :trips

	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
	validates :password_confirmation, presence: true
	validates :first_name, :last_name, :phone_number, :email, :date_of_birth, presence: true



end
