class Employee < ActiveRecord::Base
  belongs_to :petrol_pump_station
  belongs_to :attendance
  has_many :employee_attendances
  has_many :attendances
end
