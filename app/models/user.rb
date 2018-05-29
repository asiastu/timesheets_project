class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :apprentices, foreign_key: :agency_id, class_name: "Apprentice"
  has_many :placements, foreign_key: :host_validator_id, class_name: "Placement"
  has_many :placements, foreign_key: :host_invoice_contact_id, class_name: "Placement"
end
