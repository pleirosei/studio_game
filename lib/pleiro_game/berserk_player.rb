require_relative 'player'

module PleiroGame

	class BerserkPlayer < Player

		def initialize(name, health=100)
			super(name, health)
			@increased_health_count = 0
		end

		def berserk?
			@increased_health_count > 5
		end

		def increase_health
			super
			@increased_health_count += 1
			puts "#{@name} is berserk!" if berserk?
		end

		def decrease_health
			if berserk?
				increase_health
			else
				super
			end
		end
	end

	if __FILE__ == $0
		sean = BerserkPlayer.new("sean", 50)
		6.times { sean.increase_health }
		2.times { sean.decrease_health }
		puts sean.health
	end

end