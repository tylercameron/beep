class CreateReservations < ActiveRecord::Migration[5.0]
	def change
		create_table :reservations do |t|
			t.integer :passenger_id, class_name: 'User'
			t.integer :vehicle_id
			t.integer :start_time
			t.string :start_location
			t.integer :date
			t.string :destination
			t.string :comment
			t.timestamps
		end
	end
end
