# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Tyler", last_name: "Smith", phone_number: 1112223333, email: 'tsmith@email.com', date_of_birth: '19870322', password: '1234', password_confirmation: '1234')
User.create(first_name: "David", last_name: "Moon", phone_number: 1112224444, email: 'dmoon@email.com', date_of_birth: '19000101', password: '1234', password_confirmation: '1234')
Vehicle.create(vehicle_year: 2016, vehicle_make: 'Honda', vehicle_model: 'Civic', seats: 5, street_address: '3 Oxford St', city: 'Toronto', province: 'ON', postal_code: 'M2V', owner_id: 1)
Vehicle.create(vehicle_year: 2016, vehicle_make: 'Subaru', vehicle_model: 'Impreza', seats: 5, street_address: '189 Yonge St', city: 'Toronto', province: 'ON', postal_code: 'M5B 1M4', owner_id: 1)
Reservation.create(passenger_id: 2, vehicle_id: 1, start_time: 1.day.from_now, start_location: '220 King St', date: '20161212', destination: 'New York', seats: 2)
