class Expense < ApplicationRecord
  belongs_to :timesheet
  monetize :amount_cents
end
