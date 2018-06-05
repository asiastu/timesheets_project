class Placement < ApplicationRecord
  belongs_to :host_validator, class_name: 'User'
  belongs_to :host_invoice_contact, class_name: 'User'
  belongs_to :apprentice
  monetize :hourly_rate_cents
  has_many :timesheets, dependent: :destroy

  validates :address, presence: true, format: { with: /\A[a-zA-Z0-9\s]+\z/ }
  validates :pl_start_date, presence: true
  validates :pl_end_date, presence: true
  validates :hourly_rate, presence: true, numericality: { greater_than_or_equal_to: 3.70 }
end
