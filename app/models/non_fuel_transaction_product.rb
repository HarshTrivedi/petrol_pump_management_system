class NonFuelTransactionProduct < ActiveRecord::Base
  belongs_to :non_fuel_transaction
  belongs_to :product
end
