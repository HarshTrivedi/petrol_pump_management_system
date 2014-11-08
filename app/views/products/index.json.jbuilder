json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :non_fuel_transaction_id
  json.url product_url(product, format: :json)
end
