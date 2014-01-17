 module Playable

 	def increase_health
		self.health += 10
		puts "#{name} picked up health!"
	end

	def decrease_health
		self.health -= 5
		puts "#{name} is losing health!"
	end

	def strong?
		health >= 100
	end
 end