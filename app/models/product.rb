class Product < ActiveRecord::Base
  belongs_to :non_fuel_transaction
  has_many :non_fuel_transaction_products
  has_many :non_fuel_transactions
end
