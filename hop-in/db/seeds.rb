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
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Tesla', vehicle_model: 'Model X', seats: 5, street_address: '189 Yonge St', city: 'Toronto', province: 'ON', postal_code: 'M5B 1M4', owner_id: 1, image: "http://www.jetmour.com/content/home/blog/tesla-model-x-concept-doors-open-rear-three-quarter.jpg")
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Mercedes', vehicle_model: 'F 015', seats: 4, street_address: '259 Queens Quay W', city: 'Toronto', province: 'ON', postal_code: 'M5J 2N5', owner_id: 3, image: "http://gas2.org/wp-content/uploads/2015/01/mercedes-benz-f015-luxuryinmotion-ab-1.jpg")
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Tesla', vehicle_model: 'Model X', seats: 5, street_address: '439 Bathurst St', city: 'Toronto', province: 'ON', postal_code: 'M5T 2S9', owner_id: 5, image: "http://www.jetmour.com/content/home/blog/tesla-model-x-concept-doors-open-rear-three-quarter.jpg")
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Google', vehicle_model: 'Car', seats: 2, street_address: '51 Parliament St', city: 'Toronto', province: 'ON', postal_code: 'M5A 2Y5', owner_id: 6, image: "https://www.google.com/selfdrivingcar/images/car-front.jpg")
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Tesla', vehicle_model: 'Model S', seats: 5, street_address: '3508 Hurontario St', city: 'Mississauga', province: 'ON', postal_code: 'L5B 1P2', owner_id: 7, image: "http://www.thetechherald.com/wp-content/uploads/2015/12/tesla-model-s.jpg")
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Tesla', vehicle_model: 'Model S', seats: 5, street_address: '9801 Bramalea Rd', city: 'Brampton', province: 'ON', postal_code: 'L6S 2T7', owner_id: 8, image: "http://www.thetechherald.com/wp-content/uploads/2015/12/tesla-model-s.jpg")
Vehicle.create(vehicle_year: 2020, vehicle_make: 'Mercedes', vehicle_model: 'F 015', seats: 4, street_address: '3 Oxford St', city: 'Toronto', province: 'ON', postal_code: 'M5T 1N9', owner_id: 4, image: "http://gas2.org/wp-content/uploads/2015/01/mercedes-benz-f015-luxuryinmotion-ab-1.jpg")

Reservation.create(passenger_id: 2, vehicle_id: 1, start_time: 1.day.from_now, start_location: '220 King St', date: '20161212', destination: 'New York', seats: 2)

Availability.create(start_time: '1100', end_time: '1800', weekday: 'Monday', vehicle_id: 1)
Availability.create(start_time: '1100', end_time: '1800', weekday: 'Tuesday', vehicle_id: 1)
Availability.create(start_time: '1100', end_time: '1800', weekday: 'Wednesday', vehicle_id: 1)
Availability.create(start_time: '1100', end_time: '1800', weekday: 'Thursday', vehicle_id: 1)
Availability.create(start_time: '1100', end_time: '1800', weekday: 'Friday', vehicle_id: 1)
Availability.create(start_time: '1100', end_time: '1800', weekday: 'Saturday', vehicle_id: 1)
Availability.create(start_time: '1100', end_time: '1800', weekday: 'Sunday', vehicle_id: 1)
