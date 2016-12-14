class Reservation < ApplicationRecord
	has_one :owner, class_name: 'User', through: :vehicle
	belongs_to :vehicle
	belongs_to :passenger, class_name: 'User'

	validates_presence_of :start_time, :start_location, :date, :destination, :seats
  validate :not_past_date #numericality: { less_than: Time.now }



  def not_past_date
    if self.date < Date.today
      errors.add(:date, "Date can't be in the past")
    end
  end


end
