# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

league1 = League.create(league_name: "Scrubs'R Us")
league2 = League.create(league_name: "League of Bastards")
league3 = League.create(league_name: "Some League")
  97.times {
    League.create(league_name: Faker::Football.team)
  }

user1 = User.create(username: "iSalty94")
user2 = User.create(username: "bigdev23")
user3 = User.create(username: "HugoStiglitz373")
user4 = User.create(username: "guitarook")
user5 = User.create(username: "waverider411")
user6 = User.create(username: "Cerix")
12.times {
  User.create(username: Faker::Name.name)
}

team1 = Team.create(team_name: "Nyc Crushers", user_id: 1, league_id: 1)
team2 = Team.create(team_name: "Some Team", user_id: 2, league_id: 1)
team3 = Team.create(team_name: "Another Team", user_id: 3, league_id: 1)
team4 = Team.create(team_name: "I love candy", user_id: 4, league_id: 1)
team5 = Team.create(team_name: "Haters R' Us", user_id: 5, league_id: 1)
team6 = Team.create(team_name: "HaHaHaHa", user_id: 6, league_id: 1)

puts "finished making teams"
puts "making games"

team_game1 = TeamGame.create(team_id: 1, league_id: 1, score: 0, winner: nil)
team_game2 = TeamGame.create(team_id: 2, league_id: 1, score: 0, winner: nil)
team_game3 = TeamGame.create(team_id: 3, league_id: 1, score: 0, winner: nil)
team_game4 = TeamGame.create(team_id: 4, league_id: 1, score: 0, winner: nil)
team_game5 = TeamGame.create(team_id: 5, league_id: 1, score: 0, winner: nil)
team_game6 = TeamGame.create(team_id: 6, league_id: 1, score: 0, winner: nil)


10.times {
  Player.create(player_name: Faker::Football.player, points: rand(5..30), position: %w{QB RB WR}.sample, team_id: 1)
}

10.times {
  Player.create(player_name: Faker::Football.player, points: rand(5..30), position: %w{QB RB WR}.sample, team_id: 2)
}

10.times {
  Player.create(player_name: Faker::Football.player, points: rand(5..30), position: %w{QB RB WR}.sample, team_id: 3)
}

10.times {
  Player.create(player_name: Faker::Football.player, points: rand(5..30), position: %w{QB RB WR}.sample, team_id: 4)
}

10.times {
  Player.create(player_name: Faker::Football.player, points: rand(5..30), position: %w{QB RB WR}.sample, team_id: 5)
}

10.times {
  Player.create(player_name: Faker::Football.player, points: rand(5..30), position: %w{QB RB WR}.sample, team_id: 6)
}
