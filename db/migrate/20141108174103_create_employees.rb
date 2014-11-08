class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :petrol_pump_station, index: true
      t.string :name
      t.date :joining_date
      t.string :position
      t.float :salary
      t.references :attendance, index: true

      t.timestamps
    end
  end
end
