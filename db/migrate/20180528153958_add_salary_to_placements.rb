class AddSalaryToPlacements < ActiveRecord::Migration[5.2]
  def change
    add_monetize :placements, :hourly_rate, currency: { present: false }
  end
end
