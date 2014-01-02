def time
	current_time = Time.new
	current_time.strftime("%I:%M:%S")
end


def say_hello(name, health=100)
	"I'm #{name.capitalize} with a health of #{health} as of #{time}."
end

puts say_hello("larRy", 60)
puts say_hello("CURLY", 125)
puts say_hello("moE")
puts say_hello("sheMp", 90)
