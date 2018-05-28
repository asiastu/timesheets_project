class AddSalaryToApprentices < ActiveRecord::Migration[5.2]
  def change
    add_monetize :apprentices, :hourly_rate, currency: { present: false }
  end
end
