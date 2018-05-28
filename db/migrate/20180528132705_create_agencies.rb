class CreateAgencies < ActiveRecord::Migration[5.2]
  def change
    create_table :agencies do |t|
      t.string :first_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
