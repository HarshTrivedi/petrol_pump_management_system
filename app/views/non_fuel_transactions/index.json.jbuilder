json.array!(@non_fuel_transactions) do |non_fuel_transaction|
  json.extract! non_fuel_transaction, :id, :transactions_id, :product_id
  json.url non_fuel_transaction_url(non_fuel_transaction, format: :json)
end
