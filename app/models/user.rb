class User < ApplicationRecord
  has_many :teams
  has_many :leagues, through: :teams

  validates :username, presence: true
  validates :username, uniqueness: true

end
