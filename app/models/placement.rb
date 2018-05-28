class Placement < ApplicationRecord
  belongs_to :host_validator
  belongs_to :host_invoice_contact
  belongs_to :apprentice
end
