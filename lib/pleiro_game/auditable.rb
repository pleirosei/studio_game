module PleiroGame

	module Auditable
		def audit
			self.number
			puts "Rolled a #{self.number}"
		end
	end

end