class CreatePlacements < ActiveRecord::Migration[5.2]
  def change
    create_table :placements do |t|
      t.references :host_validator, foreign_key: true
      t.references :host_invoice_contact, foreign_key: true
      t.references :apprentice, foreign_key: true
      t.date :pl_start_date
      t.date :pl_end_date
      t.string :address
      t.date :interview_date

      t.timestamps
    end
  end
end
