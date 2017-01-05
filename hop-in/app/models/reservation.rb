class Reservation < ApplicationRecord
	has_one :owner, class_name: 'User', through: :vehicle
	belongs_to :vehicle
	belongs_to :passenger, class_name: 'User'

	validates_presence_of :start_time, :end_time, :start_location, :destination, :seats
  validate :not_past_date, :capacity, :not_booked, :available

  def not_past_date
    if self.start_time < DateTime.now
      errors.add(:start_time, "Time and Date can't be in the past")
    end
  end

  def capacity
    if self.seats > 0 && self.vehicle.seats >= seats
      return true
    else
      errors.add(:seats, "Number of passengers for this vehicle must be between 1 and #{self.vehicle.seats}")
      return false
    end
  end

  def not_booked
    self.vehicle.reservations.each do |booked|
      if booked.start_time <= self.end_time && self.start_time <= booked.end_time
        errors.add(:start_time, "Vehicle not available at this time")
        return false
      else
        return true
      end
    end
  end

  def available
    self.vehicle.availabilities.each do |availability|
      if self.start_time.strftime("%A") == availability.weekday && self.end_time.strftime("%A") == availability.weekday
        if self.start_time.strftime("%k%M").to_i >= availability.start_time || self.end_time.strftime("%k%M").to_i <= availability.end_time
          return true
        end
      else
        return false
      end
    end
  end
end
