class Apprentice < ApplicationRecord
  belongs_to :user
  belongs_to :agency
end
