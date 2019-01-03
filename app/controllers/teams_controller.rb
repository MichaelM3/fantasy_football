class TeamsController < ApplicationController

  def show
    @team = Team.find(params[:id])
  end

  def new
    @user = User.find(params[:id])
    @leagues = League.all
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    redirect_to league_path(@team.league_id)
  end

  private

  def team_params
    params.require(:team).permit(:team_name, :user_id, :league_id)
  end

end
