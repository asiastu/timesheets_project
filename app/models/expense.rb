class Expense < ApplicationRecord
  belongs_to :timesheet_segment
  monetize :amount_cents
end
