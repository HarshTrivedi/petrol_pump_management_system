json.array!(@customers) do |customer|
  json.extract! customer, :id, :petrol_pump_station_id, :name, :residence_number, :mobile_number
  json.url customer_url(customer, format: :json)
end
