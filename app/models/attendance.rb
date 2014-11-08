class Attendance < ActiveRecord::Base
  belongs_to :employee
  has_many :employee_attendances
  has_many :employees
end
