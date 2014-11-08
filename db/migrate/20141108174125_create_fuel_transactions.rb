class CreateFuelTransactions < ActiveRecord::Migration
  def change
    create_table :fuel_transactions do |t|
      t.references :transactions, index: true
      t.float :quantity
      t.integer :machine_id

      t.timestamps
    end
  end
end
