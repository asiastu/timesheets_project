class AddStatusToTimesheets < ActiveRecord::Migration[5.2]
  def change
    add_column :timesheets, :status, :string, default: "Pending"
  end
end
