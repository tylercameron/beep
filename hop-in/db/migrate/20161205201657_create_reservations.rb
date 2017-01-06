class CreateReservations < ActiveRecord::Migration[5.0]
	def change
		create_table :reservations do |t|
			t.integer :passenger_id, class_name: 'User'
			t.integer :vehicle_id
			t.datetime :start_time
      t.datetime :end_time
			t.string :start_location
			t.datetime :date
			t.string :destination
			t.string :comment
			t.timestamps
		end
	end
end
