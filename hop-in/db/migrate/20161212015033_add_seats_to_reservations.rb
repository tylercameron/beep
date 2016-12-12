class AddSeatsToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :seats, :integer
  end
end
