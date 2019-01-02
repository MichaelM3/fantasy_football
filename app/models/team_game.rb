class TeamGame < ApplicationRecord
  belongs_to :team
  belongs_to :league

  def total_team_points
    TeamGame.all.map do |team_game|
      array = []
      team_game.team.players.map do |player|
        array << player.points
      end
      team_game.update(score: array.inject(0){|sum, x| sum + x})
    end
  end

end
