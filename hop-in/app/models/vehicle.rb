class Vehicle < ApplicationRecord
	has_many :reservations
	has_many :passengers, class_name: 'User', through: :reservations
	belongs_to :owner, class_name: 'User'

	validates_presence_of :vehicle_year, :vehicle_make, :vehicle_model, :street_address, :city, :province, :postal_code, :seats

	def capacity(number_of_passengers, vehicle_id)
    number_of_passengers > 0 && seat_capacity(vehicle_id) >= number_of_passengers
    # errors.add(:seats, "Number of passengers for this vehicle must be between 1 and #{seat_capacity(vehicle_id)}")
	end

  def available(vehicle_id, time)
    time != reserved?(vehicle_id, time)
  end

private
	def seat_capacity(vehicle_id)
		Vehicle.find_by(id: vehicle_id).seats #- reservation_at(time).sum(:seats)
	end

	def reservation_at(time)
		reservations.where(start_time: time.beginning_of_hour..time.end_of_hour)
	end

	def reserved?(vehicle_id, time)
		Vehicle.find_by(id: vehicle_id).reservation_at(time)
	end

end









# def isoverlap
#    @garden.reservations.each do |f|
#        if f.startdate <= @reservation.enddate && @reservation.startdate <= f.enddate
#            return true
#        end
#    end
#        return false
#  end
#
#  def create
#    @garden = Garden.find(params[:garden_id])
#    @reservation = @garden.reservations.build(reservation_params)
#        if isoverlap == false
#                @reservation.user = current_user
#                if @reservation.save
#                    redirect_to garden_reservation_url(@garden, @reservation), notice: 'Reservation made!'
#                else
#                    redirect_to garden_path(@garden), alert: @reservation.errors.full_messages
#                end
#        else
#            redirect_to garden_path(@garden), alert: 'Your Reservation overlaps with another reservation change your dates'
#        end
#  end
