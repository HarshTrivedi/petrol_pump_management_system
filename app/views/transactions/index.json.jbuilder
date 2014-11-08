json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :customer_id, :payment_mode, :actual_total_price, :tax, :vat, :date
  json.url transaction_url(transaction, format: :json)
end
