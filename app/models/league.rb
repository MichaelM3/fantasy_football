class League < ApplicationRecord
  has_many :user_leagues
  has_many :users, through: :user_leagues
  has_many :teams, through: :users
  has_many :team_games

  def matchup
    all_team_games = self.team_games
    loop do
      sliced = all_team_games.shuffle.each_slice(2).to_a
      break sliced if sliced.none? { |a| a.reduce(:==) }
    end
  end

  # def matchup
  #   all_team_games = self.team_games
  #   selected = []
  #   rand1 = all_team_games.sample
  #   selected << rand1
  #   all_team_games - selected
  #   rand2 = all_team_games.sample
  #   selected << rand2
  #   all_team_games - selected
  # end

end
