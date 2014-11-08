json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :date, :overtime_hours, :present, :employee_id
  json.url attendance_url(attendance, format: :json)
end
