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
		"I'm #{@name} with a health of #{@health} and a score of #{score}."
	end

end


player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
player4 = Player.new("shemp", 90)


players = [player1, player2, player3]
players << player4
players.delete_at(2)

players.each do |player|
	puts player.blam
	puts player.w00t
	puts player.w00t
	puts player
end
