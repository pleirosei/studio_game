require_relative 'player'
require_relative "game_turn"

class Game
	attr_reader :title
	attr_reader :players

	def initialize(title)
		@title = title.capitalize
		@players = Array.new
	end

	def add_player(player)
		@player = player
		@players.push(@player)
		puts "#{@player.name} has been added for #{@title}!\n"
	end

	def play(rounds)
		puts "\nThere are #{@players.length} players in #{@title}!\n\n"

		@players.each do |player|
			puts player
		end

		1.upto(rounds) do |round|
			puts "\nRound #{round}:"
			@players.each do |player|
				GameTurn.take_turn(player)
				puts player
			end
		end
		puts "\n"
	end

	def print_name_and_health(player)
		puts "#{player.name} (#{player.health})"
	end
	def print_stats
		strong_players, wimpy_players = @players.partition { |player| player.strong? }

		puts "\n#{@title}'s Statistics:\n\n"
		puts "#{strong_players.length} strong players:"
		strong_players.each do |player| 
			print_name_and_health(player)
		end

		puts "\n\n#{wimpy_players.length} wimpy players:"
		wimpy_players.each do |player|
			print_name_and_health(player)
		end

		puts "\n#{@title}'s High Scores:"
		@players.sort.each do |player|
			formated_name = player.name.ljust(20, ".")
			puts "#{formated_name} #{player.score}"
		end

	end

end

if __FILE__ == $0
	game1 = Game.new("basketball")
	puts game1.title
end
