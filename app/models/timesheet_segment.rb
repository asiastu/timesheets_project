class TimesheetSegment < ApplicationRecord
  belongs_to :timesheet
  validates :type_of_work, inclusion: { in: [] }
end
