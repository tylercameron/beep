class Reservation < ApplicationRecord
	has_one :owner, class_name: 'User', through: :vehicle
	belongs_to :vehicle
	belongs_to :passenger, class_name: 'User'

	validates_presence_of :start_time, :start_location, :destination, :seats #:date
end
  # validate :not_past_date

  # def not_past_date
  #   if self.start_time < Time.now
  #     errors.add(:start_time, "Date can't be in the past")
  #   end
  # end
