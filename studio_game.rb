require_relative 'player'
require_relative 'clumsy_player'
require_relative 'berserk_player'
require_relative 'game'
require_relative 'die'

game1 = Game.new("scavenger")
game1.load_players(ARGV.shift || "players.csv")
player4 = ClumsyPlayer.new('klutz', 105)
player5 = BerserkPlayer.new('brent', 50)
game1.add_player(player4)
game1.add_player(player5)

loop do 
	puts "\nHow many game rounds? ('quit' to exit)"
	answer = gets.chomp.downcase	
	case answer 
	when /^\d+$/
		game1.play(answer.to_i)
	when 'quit', 'exit'
		puts game1.players
		game1.print_stats
		break
	else
		"Please enter an integer or type 'quit' to exit."
	end
end

game1.save_high_scores