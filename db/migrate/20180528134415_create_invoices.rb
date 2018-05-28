class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.references :timesheet, foreign_key: true

      t.timestamps
    end
  end
end
