class AddAmountToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_monetize :invoices, :amount, currency: { present: false }
  end
end
