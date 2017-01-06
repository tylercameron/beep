class CreateUsers < ActiveRecord::Migration[5.0]
	def change
		create_table :users do |t|
			t.string :first_name
			t.string :last_name
			t.integer :phone_number
			t.string :email
			t.datetime :date_of_birth
			t.timestamps
		end
	end
end
