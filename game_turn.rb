require_relative 'player'
require_relative 'die'

module GameTurn
	def self.take_turn(player)
		die = Die.new
		case die.roll
		when 1..2
			player.decrease_health
		when 3..4
			puts "#{player.name} has been skipped!"
		else
			player.increase_health
		end
	end
end