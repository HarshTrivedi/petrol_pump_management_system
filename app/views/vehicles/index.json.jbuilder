json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :customer_id, :number, :type
  json.url vehicle_url(vehicle, format: :json)
end
