class AddCoordinatesToPlacements < ActiveRecord::Migration[5.2]
  def change
    add_column :placements, :latitude, :float
    add_column :placements, :longitude, :float
  end
end
