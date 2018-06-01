class Timesheet < ApplicationRecord
  belongs_to :placement
  has_many :timesheet_segments, dependent: :destroy
  has_many :expenses, dependent: :destroy
end
