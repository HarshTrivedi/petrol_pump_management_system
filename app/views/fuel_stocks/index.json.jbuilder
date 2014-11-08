json.array!(@fuel_stocks) do |fuel_stock|
  json.extract! fuel_stock, :id, :tank_id, :date, :opening_quantity, :closing_quantity
  json.url fuel_stock_url(fuel_stock, format: :json)
end
