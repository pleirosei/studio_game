class Player
	attr_accessor :health
	attr_reader 	:name


	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
	end

	def increase_health
		@health += 10
		"#{@name} picked up health!"
	end

	def decrease_health
		@health -= 5
		"#{@name} is losing health!"
	end

	def score
		@name.length + @health
	end

	def to_s
		"I am #{@name} with a health of #{@health} and a score of #{score}!"
	end
end

class Game
	attr_reader :name
	attr_reader :players

	def initialize(name)
		@name = name.capitalize
		@players = Array.new
	end

	def add_player(player)
		@player = player
		@players.push(@player)
		puts "#{@player.name} has been added for #{@name}!"
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

player1 = Player.new("sean", 150)
player2 = Player.new("stephon", 135)
player3 = Player.new("cory")

game1 = Game.new("basketball")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.play
puts game1.players