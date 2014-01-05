require_relative 'player'

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
		@players.each do |player|
			puts player
		end
		@players.each do |player|
			puts player.decrease_health
			puts player.increase_health
			puts player.increase_health
			puts player
		end

	end
end

if __FILE__ == $0
	game1 = Game.new("basketball")
	puts game1.title
end
