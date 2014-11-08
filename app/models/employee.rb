class Employee < ActiveRecord::Base
  belongs_to :petrol_pump_station
  belongs_to :attendance
end
