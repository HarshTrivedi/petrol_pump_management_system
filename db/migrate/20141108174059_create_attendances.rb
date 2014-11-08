class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.date :date
      t.integer :overtime_hours
      t.boolean :present
      t.references :employee, index: true

      t.timestamps
    end
  end
end
