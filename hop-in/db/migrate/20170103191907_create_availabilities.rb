class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer  :vehicle_id
      t.timestamps
    end
  end
end
