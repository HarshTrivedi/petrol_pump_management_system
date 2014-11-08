class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.references :petrol_pump_station, index: true
      t.string :name
      t.string :residence_number
      t.string :mobile_number

      t.timestamps
    end
  end
end
