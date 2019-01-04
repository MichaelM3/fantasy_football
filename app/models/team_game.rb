class TeamGame < ApplicationRecord
  belongs_to :team
  belongs_to :league

  def self.total_team_points
    TeamGame.all.map do |team_game|
      final_score = team_game.team.players.inject(0){|sum, player| sum + player.points}
      team_game.update(score: final_score)
    end
  end

end
