class EmployeeAttendance < ActiveRecord::Base
  belongs_to :employee
  belongs_to :attendance
end
