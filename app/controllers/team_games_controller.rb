class TeamGamesController < ApplicationController

  def index
    @team_games = TeamGame.all
    @matchup = TeamGame.matchup
    @matchup.each do |matchup|
      if matchup[0].score > matchup[1].score
        matchup[0].update(winner: true)
        matchup[1].update(winner: false)
      else
        matchup[0].update(winner: false)
        matchup[1].update(winner: true)
      end
    end
  end

end
