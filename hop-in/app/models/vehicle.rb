class Vehicle < ApplicationRecord
	has_many :reservations
	has_many :passengers, class_name: 'User', through: :reservations
	belongs_to :owner, class_name: 'User'
end
