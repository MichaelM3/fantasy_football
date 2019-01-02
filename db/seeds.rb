# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

leagueUser1 = LeagueUser.create(user_id: 1, league_id: 1)
leagueUser2 = LeagueUser.create(user_id: 2, league_id: 1)
leagueUser3 = LeagueUser.create(user_id: 3, league_id: 1)
leagueUser4 = LeagueUser.create(user_id: 4, league_id: 1)
leagueUser5 = LeagueUser.create(user_id: 5, league_id: 1)
leagueUser6 = LeagueUser.create(user_id: 6, league_id: 1)

puts "Making League"

league1 = League.create(league_name: "Scrubs'R Us")

puts "finished leagues"
puts "making users"

user1 = User.create(username: "iSalty94")
user2 = User.create(username: "bigdev23")
user3 = User.create(username: "HugoStiglitz373")
user4 = User.create(username: "guitarook")
user5 = User.create(username: "waverider411")
user6 = User.create(username: "Cerix")

puts "Finished making users"
puts "making teams"

team1 = Team.create(team_name: "Nyc Crushers", user_id: 1)
team2 = Team.create(team_name: "Some Team", user_id: 2)
team3 = Team.create(team_name: "Another Team", user_id: 3)
team4 = Team.create(team_name: "I love candy", user_id: 4)
team5 = Team.create(team_name: "Haters R' Us", user_id: 5)
team6 = Team.create(team_name: "HaHaHaHa", user_id: 6)

puts "finished making teams"
puts "making games"

team_game1 = TeamGame.create(team_id: 1, league_id: 1, score: 0, winner: nil)
team_game2 = TeamGame.create(team_id: 2, league_id: 1, score: 0, winner: nil)
team_game3 = TeamGame.create(team_id: 3, league_id: 1, score: 0, winner: nil)
team_game4 = TeamGame.create(team_id: 4, league_id: 1, score: 0, winner: nil)
team_game5 = TeamGame.create(team_id: 5, league_id: 1, score: 0, winner: nil)
team_game6 = TeamGame.create(team_id: 6, league_id: 1, score: 0, winner: nil)

player1 = Player.create(player_name: "Todd Gurley", points: 40, position: "RB", team_id: 1)
player2 = Player.create(player_name: "Some Guy", points: 39, position: "WR", team_id: 1)
player3 = Player.create(player_name: "Another Guy", points: 28, position: "WR", team_id: 1)
player4 = Player.create(player_name: "Sanquan Barkley", points: 10, position: "RB", team_id: 1)
player5 = Player.create(player_name: "Adrien Peterson", points: 25, position: "RB", team_id: 1)
player6 = Player.create(player_name: "Baker Mayfield", points: 50, position: "QB", team_id: 1)
player7 = Player.create(player_name: "Eli Manning", points: 29, position: "QB", team_id: 1)
player8 = Player.create(player_name: "Odell Bekham Jr", points: 18, position: "WR", team_id: 1)
player9 = Player.create(player_name: "Antonio Brown", points: 30, position: "WR", team_id: 1)
player10 = Player.create(player_name: "Darren McFadden", points: 8, position: "RB", team_id: 1)
player11 = Player.create(player_name: "Yargg", points: 50, position: "RB", team_id: 2)
player12 = Player.create(player_name: "Who am i", points: 9, position: "WR", team_id: 2)
player13 = Player.create(player_name: "Another Guy", points: 28, position: "WR", team_id: 2)
player14 = Player.create(player_name: "best player", points: 10, position: "RB", team_id: 2)
player15 = Player.create(player_name: "another amazing player", points: 25, position: "RB", team_id: 2)
player16 = Player.create(player_name: "blahhsdfa", points: 50, position: "QB", team_id: 2)
player17 = Player.create(player_name: "egggg", points: 10, position: "QB", team_id: 2)
player18 = Player.create(player_name: "good player guy", points: 18, position: "WR", team_id: 2)
player19 = Player.create(player_name: "haha im nasty", points: 30, position: "WR", team_id: 2)
player20 = Player.create(player_name: "yooraora", points: 8, position: "RB", team_id: 2)
player21 = Player.create(player_name: "Todd Gurley", points: 40, position: "RB", team_id: 3)
player22 = Player.create(player_name: "Some Guy", points: 39, position: "WR", team_id: 3)
player23 = Player.create(player_name: "Another Guy", points: 28, position: "WR", team_id: 3)
player24 = Player.create(player_name: "Sanquan Barkley", points: 10, position: "RB", team_id: 3)
player25 = Player.create(player_name: "Adrien Peterson", points: 25, position: "RB", team_id: 3)
player26 = Player.create(player_name: "Baker Mayfield", points: 50, position: "QB", team_id: 3)
player27 = Player.create(player_name: "Eli Manning", points: 29, position: "QB", team_id: 3)
player28 = Player.create(player_name: "Odell Bekham Jr", points: 18, position: "WR", team_id: 3)
player29 = Player.create(player_name: "Antonio Brown", points: 30, position: "WR", team_id: 3)
player30 = Player.create(player_name: "Darren McFadden", points: 8, position: "RB", team_id: 3)
player31 = Player.create(player_name: "Some Guy", points: 39, position: "WR", team_id: 4)
player32 = Player.create(player_name: "Another Guy", points: 28, position: "WR", team_id: 4)
player33 = Player.create(player_name: "Sanquan Barkley", points: 10, position: "RB", team_id: 4)
player34 = Player.create(player_name: "Adrien Peterson", points: 25, position: "RB", team_id: 4)
player35 = Player.create(player_name: "Baker Mayfield", points: 50, position: "QB", team_id: 4)
player36 = Player.create(player_name: "Eli Manning", points: 29, position: "QB", team_id: 4)
player37 = Player.create(player_name: "Odell Bekham Jr", points: 18, position: "WR", team_id: 4)
player38 = Player.create(player_name: "Antonio Brown", points: 30, position: "WR", team_id: 4)
player39 = Player.create(player_name: "Darren McFadden", points: 8, position: "RB", team_id: 4)
player40 = Player.create(player_name: "Darren McFadden", points: 8, position: "RB", team_id: 4)
