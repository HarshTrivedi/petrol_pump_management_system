class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :customer, index: true
      t.string :payment_mode
      t.float :actual_total_price
      t.float :tax
      t.float :vat
      t.date :date

      t.timestamps
    end
  end
end
