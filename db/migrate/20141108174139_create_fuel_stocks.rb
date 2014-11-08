class CreateFuelStocks < ActiveRecord::Migration
  def change
    create_table :fuel_stocks do |t|
      t.references :tank, index: true
      t.date :date
      t.float :opening_quantity
      t.float :closing_quantity

      t.timestamps
    end
  end
end
