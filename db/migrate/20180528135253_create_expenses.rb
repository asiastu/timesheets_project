class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :type
      t.string :amount
      t.references :timesheet_segment, foreign_key: true
      t.string :proof_picture

      t.timestamps
    end
  end
end
