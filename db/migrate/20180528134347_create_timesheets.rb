class CreateTimesheets < ActiveRecord::Migration[5.2]
  def change
    create_table :timesheets do |t|
      t.references :placement, foreign_key: true

      t.timestamps
    end
  end
end
