class League < ApplicationRecord
  has_many :teams
  has_many :users, through: :teams
  has_many :team_games

  def matchup
    all_team_games = self.team_games
    loop do
      sliced = all_team_games.shuffle.each_slice(2).to_a
      break sliced if sliced.none? { |a| a.reduce(:==) }
    end
  end

  def count_teams
    self.teams.count
  end

  def available_spots
    available = 6 - count_teams
    if available > 0
      "#{count_teams}/6 NOT FULL"
    else
      "#{count_teams}/6 FULL"
    end
  end

  # def winner_rewards
  #   self.teams.each do |team|
  #     winning_team = team.find_by(winner: true)
  #     new_total = winning_team.reward_points + 1
  #     winning_team.update(reward_points: new_total)
  #   end
  # end

end
