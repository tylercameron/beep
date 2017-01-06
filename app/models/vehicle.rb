class Vehicle < ApplicationRecord
	has_many :reservations
  has_many :availabilities
	has_many :passengers, class_name: 'User', through: :reservations
	belongs_to :owner, class_name: 'User'

	validates_presence_of :vehicle_year, :vehicle_make, :vehicle_model, :street_address, :city, :province, :postal_code, :seats

	def self.search(search)

	  where("city ILIKE ?", "%#{search}%")
		.or(where("vehicle_make ILIKE ?", "%#{search}%"))
		.or(where("vehicle_model ILIKE ?", "%#{search}%"))
		.or(where("province ILIKE ?", "%#{search}%"))
		# .or(where("seats >= ?", "#{search.to_i}"))

	end



end
