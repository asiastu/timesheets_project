class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :type
      t.references :timesheet, foreign_key: true
      t.string :proof_picture

      t.timestamps
    end
  end
end
