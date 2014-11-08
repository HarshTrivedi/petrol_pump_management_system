class NonFuelTransaction < ActiveRecord::Base
  belongs_to :transactions
  belongs_to :product
  has_many :non_fuel_transaction_products
end
