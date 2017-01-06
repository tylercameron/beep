class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.integer :start_time
      t.integer :end_time
      t.string :weekday
      t.integer  :vehicle_id
      t.timestamps
    end
  end
end
