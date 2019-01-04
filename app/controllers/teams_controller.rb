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
    if @team.valid?
      flash[:notice] = "You've created your team!"
      redirect_to league_path(@team.league_id)
    else
      flash[:errors] = @team.errors.full_messages
      redirect_to new_team_to_league_path(@team.user_id)
    end
  end

  private

  def team_params
    params.require(:team).permit(:team_name, :user_id, :league_id)
  end

end
