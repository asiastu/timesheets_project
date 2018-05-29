class Apprentice < ApplicationRecord
  belongs_to :user
  belongs_to :agency
  monetize :hourly_rate_cents
end
