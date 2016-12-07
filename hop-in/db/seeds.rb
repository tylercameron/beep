# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tyler = User.create(first_name: "Tyler", last_name: "Smith", phone_number: 1112223333, email: 'tsmith@email.com', date_of_birth: '19870322', password: '1234', password_confirmation: '1234')
car1 = Vehicle.create(vehicle_year: 2016, vehicle_make: 'Honda', vehicle_model: 'Civic', seats: 5, street_address: '220 King St', city: 'Toronto', province: 'ON', postal_code: 'M2V', owner_id: 1)
david = User.create(first_name: "David", last_name: "Moon", phone_number: 1112224444, email: 'dmoon@email.com', date_of_birth: '19000101', password: '1234', password_confirmation: '1234')
reso1 = Reservation.create(passenger_id: 2, vehicle_id: 1, start_time: 1200, start_location: '220 King St', date: 01122016, destination: 'New York')

# Reservation.new(user_id: 2, vehicle_id: 1, start_time: 1200, start_location: '220 King St', date: 01122016, destination: 'New York')
