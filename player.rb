class Player
	attr_accessor :health
	attr_reader :name


	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
	end

	def increase_health
		@health += 10
		puts "#{@name} picked up health!"
	end

	def decrease_health
		@health -= 5
		puts "#{@name} is losing health!"
	end

	def strong?
		@health >= 100
	end

	def score
		@name.length + @health
	end

	def to_s
		"I am #{@name} with a health of #{@health} and a score of #{score}!"
	end
end

if __FILE__ == $0

	player1 = Player.new("sean", 150)
	puts player1
	puts player1.name
	puts player1.health
end