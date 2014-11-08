json.array!(@employees) do |employee|
  json.extract! employee, :id, :petrol_pump_station_id, :name, :joining_date, :position, :salary, :attendance_id
  json.url employee_url(employee, format: :json)
end
