class CreateTeamGames < ActiveRecord::Migration[5.2]
  def change
    create_table :team_games do |t|
      t.integer :league_id
      t.integer :team_id
      t.integer :score
      t.boolean :winner

      t.timestamps
    end
  end
end
