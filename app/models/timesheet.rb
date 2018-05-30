class Timesheet < ApplicationRecord
  belongs_to :placement
  has_many :timesheet_segments, dependent: :destroy
end
