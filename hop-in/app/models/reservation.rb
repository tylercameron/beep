class Reservation < ApplicationRecord
	has_one :owner, class_name: 'User', source: :user, through: :vehicle
	belongs_to :vehicle
	belongs_to :passenger, class_name: 'User', source: :user

	validates_presence_of :start_time, :start_location, :date, :destination
end
