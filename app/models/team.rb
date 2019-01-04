class Team < ApplicationRecord
  belongs_to :user
  belongs_to :league
  has_many :players
  has_many :team_games

  validate :cannot_have_more_than_6_teams
  validates :team_name, presence: true
  validates :team_name, uniqueness: true

  def count_teams
    self.league.teams.count
  end

  def cannot_have_more_than_6_teams
    if count_teams >= 6
      errors.add(:teams, "can't have more than 6 in a league")
    end
  end

end
