class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.references :non_fuel_transaction, index: true

      t.timestamps
    end
  end
end
