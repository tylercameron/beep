class RenameUserId < ActiveRecord::Migration[5.0]
	def change
		# reversible do |dir|
		# 	dir.up do
		# 		rename_column :reservations, :passenger_id, :user_id
		# 		rename_column :vehicles, :owner_id, :user_id
		# 	end
		# 	dir.down do
		# 		rename_column :reservations, :user_id, :passenger_id
		# 		rename_column :vehicles, :user_id, :owner_id
		# 	end
		# end
	end
end
