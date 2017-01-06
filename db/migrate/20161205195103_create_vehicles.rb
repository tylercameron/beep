class CreateVehicles < ActiveRecord::Migration[5.0]
	def change
		create_table :vehicles do |t|
			t.integer :vehicle_year
			t.string :vehicle_make
			t.string :vehicle_model
			t.string :street_address
			t.string :city
			t.string :province
			t.string :postal_code
			t.integer :owner_id, class_name: 'User'
			t.timestamps
		end
	end
end
