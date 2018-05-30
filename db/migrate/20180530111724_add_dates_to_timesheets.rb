class AddDatesToTimesheets < ActiveRecord::Migration[5.2]
  def change
    add_column :timesheets, :week_start, :date
    add_column :timesheets, :week_end, :date
  end
end
