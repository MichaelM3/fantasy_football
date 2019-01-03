class League < ApplicationRecord
  has_many :teams
  has_many :users, through: :teams
  has_many :team_games

  validates :count, numericality: { less_than_or_equal_to: 6,  only_integer: true }

  def matchup
    all_team_games = self.team_games
    loop do
      sliced = all_team_games.shuffle.each_slice(2).to_a
      break sliced if sliced.none? { |a| a.reduce(:==) }
    end
  end

  def count
    self.teams.length
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
