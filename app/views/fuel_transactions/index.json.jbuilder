json.array!(@fuel_transactions) do |fuel_transaction|
  json.extract! fuel_transaction, :id, :transactions_id, :quantity, :machine_id
  json.url fuel_transaction_url(fuel_transaction, format: :json)
end
