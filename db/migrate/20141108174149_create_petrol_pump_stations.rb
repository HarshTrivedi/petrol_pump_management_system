class CreatePetrolPumpStations < ActiveRecord::Migration
  def change
    create_table :petrol_pump_stations do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :street_address
      t.string :pincode

      t.timestamps
    end
  end
end
