class Apprentice < ApplicationRecord
  belongs_to :user
  belongs_to :agency, class_name: 'User'
  monetize :hourly_rate_cents

  accepts_nested_attributes_for :user
end
