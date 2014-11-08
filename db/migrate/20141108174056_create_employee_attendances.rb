class CreateEmployeeAttendances < ActiveRecord::Migration
  def change
    create_table :employee_attendances do |t|
      t.references :employee, index: true
      t.references :attendance, index: true
      t.date :date

      t.timestamps
    end
  end
end
