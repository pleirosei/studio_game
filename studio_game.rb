require_relative 'game'

player1 = Player.new("sean", 150)
player2 = Player.new("stephon", 135)
player3 = Player.new("cory")

game1 = Game.new("basketball")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.play
puts game1.players