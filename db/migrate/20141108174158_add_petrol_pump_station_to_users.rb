class AddPetrolPumpStationToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :petrol_pump_station, index: true
  end
end
