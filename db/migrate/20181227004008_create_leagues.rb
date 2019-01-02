class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.string :league_name
      t.integer :user_id

      t.timestamps
    end
  end
end
