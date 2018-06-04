class Timesheet < ApplicationRecord
  belongs_to :placement
  has_many :timesheet_segments, dependent: :destroy
  has_many :expenses, dependent: :destroy

  validates :status, inclusion: { in: ["Paid", "Accepted", "Rejected", "Submitted", "Pending Submission"] }

  def paid?
    status == 'Paid'
  end

  def accepted?
  status == 'Accepted'
  end

  def rejected?
    status == 'Rejected'
  end

  def queried?
    status == 'Queried'
  end

  def submitted?
    status == 'Submitted'
  end

  def pending_submission?
    status == 'Pending Submission'
  end
end
