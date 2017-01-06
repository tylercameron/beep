class Reservation < ApplicationRecord
	has_one :owner, class_name: 'User', through: :vehicle
	belongs_to :vehicle
	belongs_to :passenger, class_name: 'User'

	validates_presence_of :start_time, :end_time, :start_location, :destination, :seats
  validate :not_past_date, :capacity, :not_booked, :available_check

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

  def available_check
    if available? == false
      errors.add(:start_time, "Vehicle not available at this time")
    end
  end

  def available?
    self.vehicle.availabilities.each do |availability|
      # binding pry
      if self.start_time.strftime("%A") == availability.weekday && self.start_time.strftime("%A") == self.end_time.strftime("%A")
        # checking reservation weekday is same as availability weekday && reservation is on same day
        # return true

        if self.start_time.strftime("%k%M").to_i < availability.start_time || self.end_time.strftime("%k%M").to_i > availability.end_time
          #checking reservation start is earlier than availability start && reservation end is later than availability end
# binding pry
          return false
        end
      # else
        # binding pry
# return false
      end

    end
  end
end
