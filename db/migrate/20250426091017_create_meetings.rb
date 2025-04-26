class CreateMeetings < ActiveRecord::Migration[8.0]
  def change
    create_table :meetings do |t|
      t.string :home_team
      t.string :away_team
      t.date :date
      t.string :gate_choice

      t.timestamps
    end
  end
end
