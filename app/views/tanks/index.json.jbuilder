json.array!(@tanks) do |tank|
  json.extract! tank, :id, :capacity, :fuel_type, :petrol_pump_station_id
  json.url tank_url(tank, format: :json)
end
