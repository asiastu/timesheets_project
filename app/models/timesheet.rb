class Timesheet < ApplicationRecord
  belongs_to :placement
  has_many :timesheet_segments, dependent: :destroy
  has_many :expenses, dependent: :destroy

  validates :status, inclusion: { in: ["Paid", "Accepted", "Rejected", "Queried", "Submitted", "Payment pending", "Pending Submission"] }
end
