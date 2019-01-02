class User < ApplicationRecord
  has_many :league_users
  has_many :leagues, through: :league_users
  has_many :teams, through: :leagues
end
