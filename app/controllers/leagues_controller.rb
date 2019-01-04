class LeaguesController < ApplicationController

  def index
    @leagues = League.all
    @players = Player.all
  end

  def show
    @league = League.find(params[:id])
  end

  def new
    @league = League.new
  end

  def create
    @league = League.create(league_params)
    redirect_to @league
  end

  def matchups
    @league = League.find(params[:id])
    @matchup = @league.matchup
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

  private

  def league_params
    params.require(:league).permit(:league_name)
  end

end
