class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :apprentice
  has_many :apprentices, foreign_key: :agency_id, class_name: "Apprentice"
  has_many :hosted_placements, foreign_key: :host_validator_id, class_name: "Placement"
  has_many :invoice_placements, foreign_key: :host_invoice_contact_id, class_name: "Placement"

  scope :host_validators, -> { where(role: "Host Company (Timesheet Validation)") }
  scope :host_invoice_contacts, -> { where(role: "Host Company (Invoicing)") }

  validates :first_name, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters" }
  validates :last_name, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters" }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def agency?
    role == 'Employment Agency'
  end

  def host_validator?
    role == 'Host Company (Timesheet Validation)'
  end

  def host_invoice_contact?
    role == 'Host Company (Invoicing)'
  end

  def apprentice?
    role == 'Apprentice'
  end

  def host_formatted_name
    "#{company_name} - #{last_name}, #{first_name}"
  end
end
