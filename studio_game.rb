require_relative 'player'
require_relative 'game'
require_relative 'die'

player1 = Player.new("sean", 70)
player2 = Player.new("stephon", 70)
player3 = Player.new("cory", 70)

game1 = Game.new("scavenger")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.play(10) do
	game1.total_points >= 1000
end
puts game1.players
game1.print_stats