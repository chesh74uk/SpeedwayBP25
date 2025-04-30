class CreateTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :teams do |t|
      t.string :rider
      t.string :team_name

      t.timestamps
    end
  end
end
