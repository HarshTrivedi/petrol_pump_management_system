json.array!(@petrol_pump_stations) do |petrol_pump_station|
  json.extract! petrol_pump_station, :id, :name, :city, :state, :street_address, :pincode
  json.url petrol_pump_station_url(petrol_pump_station, format: :json)
end
