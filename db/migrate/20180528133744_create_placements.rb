class CreatePlacements < ActiveRecord::Migration[5.2]
  def change
    create_table :placements do |t|
      t.references :host_validator, references: :users
      t.references :host_invoice_contact, references: :users
      t.references :apprentice, references: :users
      t.date :pl_start_date
      t.date :pl_end_date
      t.string :address
      t.date :interview_date

      t.timestamps
    end
  end
end
