class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.references :customer, index: true
      t.string :number
      t.string :type

      t.timestamps
    end
  end
end
