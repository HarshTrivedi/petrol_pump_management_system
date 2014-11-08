class CreateNonFuelTransactionProducts < ActiveRecord::Migration
  def change
    create_table :non_fuel_transaction_products do |t|
      t.references :non_fuel_transaction, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
