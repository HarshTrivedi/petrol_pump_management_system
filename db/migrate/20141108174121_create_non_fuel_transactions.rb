class CreateNonFuelTransactions < ActiveRecord::Migration
  def change
    create_table :non_fuel_transactions do |t|
      t.references :transactions, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
