class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :player_name
      t.integer :points
      t.string :position
      t.integer :team_id

      t.timestamps
    end
  end
end
