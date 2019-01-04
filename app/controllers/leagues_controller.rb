class LeaguesController < ApplicationController

  def index
    @players = Player.all
    if League.where('league_name LIKE ?', "%#{params[:search]}%").length > 0
      @leagues = League.where('league_name LIKE ?', "%#{params[:search]}%")
    else
      @leagues = League.all
    end
  end

  def show
    @league = League.find(params[:id])
  end

  def new
    @league = League.new
  end

  def create
    @league = League.create(league_params)
    if @league.valid?
      flash[:notice] = "You've created your league!"
      redirect_to @league
    else
      flash[:errors] = @league.errors.full_messages
      redirect_to new_league_path
    end
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
