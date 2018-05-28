class CreateTimesheetSegments < ActiveRecord::Migration[5.2]
  def change
    create_table :timesheet_segments do |t|
      t.date :date
      t.string :hours_worked
      t.string :type_of_work
      t.references :timesheet, foreign_key: true

      t.timestamps
    end
  end
end
