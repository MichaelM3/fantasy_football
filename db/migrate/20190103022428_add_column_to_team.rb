class AddColumnToTeam < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :reward_points, :integer, default: 0
  end
end
