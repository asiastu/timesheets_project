class Apprentice < ApplicationRecord
  belongs_to :user
  belongs_to :agency, class_name: 'User'
  has_many :placements
  monetize :hourly_rate_cents

  accepts_nested_attributes_for :user

  def formatted_name
    "#{user.last_name}, #{user.first_name}"
  end
end
