class Placement < ApplicationRecord
  belongs_to :host_validator, class_name: 'User'
  belongs_to :host_invoice_contact, class_name: 'User'
  belongs_to :apprentice
  monetize :hourly_rate_cents
  has_many :timesheets
end
