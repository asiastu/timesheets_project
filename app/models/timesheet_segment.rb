class TimesheetSegment < ApplicationRecord
  belongs_to :timesheet
  validates :type_of_work, presence: true, inclusion: { in: ['On Site', 'College', 'Off sick', 'Holiday', 'Not working'] }
  validates :hours_worked, inclusion: { in: (0..24) }
end
