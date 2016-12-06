class AddSeatsToVehicle < ActiveRecord::Migration[5.0]
	def change
		reversible do |dir|
			dir.up do
				add_column :vehicles, :seats, :integer
			end
			dir.down do
				remove_column :vehicles, :seats
			end
		end
	end
end
