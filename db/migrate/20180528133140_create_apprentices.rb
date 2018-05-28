class CreateApprentices < ActiveRecord::Migration[5.2]
  def change
    create_table :apprentices do |t|
      t.references :user, foreign_key: true
      t.references :agency, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :trade
      t.string :skills
      t.string :borough
      t.string :address
      t.string :personal_statement
      t.date :app_start_date
      t.date :app_end_date
      t.string :college_day

      t.timestamps
    end
  end
end
