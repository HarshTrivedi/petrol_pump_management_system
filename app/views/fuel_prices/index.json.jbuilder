json.array!(@fuel_prices) do |fuel_price|
  json.extract! fuel_price, :id, :type, :price
  json.url fuel_price_url(fuel_price, format: :json)
end
