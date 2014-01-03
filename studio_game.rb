class Player
	attr_accessor :name
	attr_reader :health

	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
	end

	def name=(new_name)
		@name = new_name.capitalize
	end

	def blam
		@health -= 10
		"#{@name} got blammed!"
	end

	def w00t
		@health += 15
		"#{@name} got w00ted!"
	end

	def score
		@health + @name.length
	end

	def to_s
		"I'm #{@name} with a health of #{score}."
	end
end

player2 = Player.new("larry", 60)
puts player2.name
player2.name = "lawrence"
puts player2.name
puts player2.health
puts player2.score
puts player2