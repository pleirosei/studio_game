module Auditable
	def audit
		self.number
		puts "Rolled a #{self.number} (#{self.class})"
	end
end