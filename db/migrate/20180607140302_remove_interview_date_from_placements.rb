class RemoveInterviewDateFromPlacements < ActiveRecord::Migration[5.2]
  def change
    remove_column :placements, :interview_date
  end
end
