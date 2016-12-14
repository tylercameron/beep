class NewTime < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
			dir.up do
				change_column :reservations, :start_time, :datetime
			end
			dir.down do
				change_column :reservations, :start_time, :integer
			end
		end
  end
end
