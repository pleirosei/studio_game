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
		puts "#{@player.name} has been added for #{@title}!"
	end

	def play
		puts "There are #{@players.length} players in #{@title}!"

		@players.each do |player|
			puts player
		end

		@players.each do |player|
			GameTurn.take_turn(player)
			puts player
		end

	end
end

if __FILE__ == $0
	game1 = Game.new("basketball")
	puts game1.title
end
