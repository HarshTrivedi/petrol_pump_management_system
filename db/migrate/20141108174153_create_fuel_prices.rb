class CreateFuelPrices < ActiveRecord::Migration
  def change
    create_table :fuel_prices do |t|
      t.string :type
      t.integer :price

      t.timestamps
    end
  end
end
