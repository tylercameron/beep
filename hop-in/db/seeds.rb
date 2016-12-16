# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Tyler", last_name: "Smith", phone_number: 1112223333, email: 'tsmith@email.com', date_of_birth: '19870322', password: '1234', password_confirmation: '1234')
User.create(first_name: "David", last_name: "Moon", phone_number: 1112224444, email: 'dmoon@email.com', date_of_birth: '19000101', password: '1234', password_confirmation: '1234')
User.create(first_name: "Jessica", last_name: "Alexander", phone_number: 1112224444, email: 'js@email.com', date_of_birth: '19000101', password: '1234', password_confirmation: '1234')
User.create(first_name: "Will", last_name: "Smith", phone_number: 1112224444, email: 'wsmith@email.com', date_of_birth: '19000101', password: '1234', password_confirmation: '1234')
User.create(first_name: "Elon", last_name: "Musk", phone_number: 1112224444, email: 'elon@email.com', date_of_birth: '19000101', password: '1234', password_confirmation: '1234')
User.create(first_name: "Bill", last_name: "Gates", phone_number: 1112224444, email: 'bgates@email.com', date_of_birth: '19000101', password: '1234', password_confirmation: '1234')
User.create(first_name: "Dave", last_name: "Alexander", phone_number: 1112224444, email: 'dave@email.com', date_of_birth: '19000101', password: '1234', password_confirmation: '1234')
User.create(first_name: "Jess", last_name: "Moon", phone_number: 1112224444, email: 'jmoon@email.com', date_of_birth: '19000101', password: '1234', password_confirmation: '1234')
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Tesla', vehicle_model: 'Model X', seats: 5, street_address: '189 Yonge St', city: 'Toronto', province: 'ON', postal_code: 'M5B 1M4', owner_id: 1)
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Mercedes', vehicle_model: 'F 015', seats: 4, street_address: '259 Queens Quay W', city: 'Toronto', province: 'ON', postal_code: 'M5J 2N5', owner_id: 3)
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Tesla', vehicle_model: 'Model X', seats: 5, street_address: '439 Bathurst St', city: 'Toronto', province: 'ON', postal_code: 'M5T 2S9', owner_id: 5)
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Google', vehicle_model: 'Car', seats: 2, street_address: '51 Parliament St', city: 'Toronto', province: 'ON', postal_code: 'M5A 2Y5', owner_id: 6)
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Tesla', vehicle_model: 'Model S', seats: 5, street_address: '3508 Hurontario St', city: 'Mississauga', province: 'ON', postal_code: 'L5B 1P2', owner_id: 7)
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Tesla', vehicle_model: 'Model S', seats: 5, street_address: '9801 Bramalea Rd', city: 'Brampton', province: 'ON', postal_code: 'L6S 2T7', owner_id: 8)
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Mercedes', vehicle_model: 'F 015', seats: 4, street_address: '3 Oxford St', city: 'Toronto', province: 'ON', postal_code: 'M5T 1N9', owner_id: 4)

Reservation.create(passenger_id: 2, vehicle_id: 1, start_time: 1.day.from_now, start_location: '220 King St', date: '20161212', destination: 'New York', seats: 2)
