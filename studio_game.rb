require_relative 'player'
require_relative 'game'
require_relative 'die'

player1 = Player.new("sean", 150)
player2 = Player.new("stephon")
player3 = Player.new("cory", 99)

game1 = Game.new("basketball")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.play
puts game1.players
