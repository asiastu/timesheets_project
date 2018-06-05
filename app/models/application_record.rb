class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def full_name
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end
end
