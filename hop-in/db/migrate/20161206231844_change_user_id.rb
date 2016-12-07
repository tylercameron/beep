class ChangeUserId < ActiveRecord::Migration[5.0]
	def change
		reversible do |dir|
			dir.up do
				change_column :reservations, :date, :datetime
			end
			dir.down do
				change_column :reservations, :date, :integer
			end
		end
	end
end
