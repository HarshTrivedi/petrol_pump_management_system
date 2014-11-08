class CreateTanks < ActiveRecord::Migration
  def change
    create_table :tanks do |t|
      t.integer :capacity
      t.string :fuel_type
      t.references :petrol_pump_station, index: true

      t.timestamps
    end
  end
end
