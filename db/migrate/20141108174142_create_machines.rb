class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.references :tank, index: true

      t.timestamps
    end
  end
end
