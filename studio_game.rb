# Players Names
name1 = "larry"
name2 = "curly"
name3 = "moe"
name4 = "shemp"
formated_name = name4.capitalize.ljust(30, '.')

# Players Health
health1 = 60
health2 = 125
health3 = 100
health4 = 90

# Current Time
current_time = Time.now
formatted_time = current_time.strftime("on %A %-m/%-d/%y at%l:%M %p") # Formatted time.

puts "The game started #{formatted_time}"

puts "#{name1.capitalize} has a health of #{health1}."
puts "#{name2.upcase} has a health of #{health2}."

health2 = health1

puts "#{name2.upcase} has a health of #{health2}"

health1 = 30

puts "#{name1.capitalize} has a health of #{health1}."
puts "#{name2.upcase} has a health of #{health2}."
puts "#{name3.capitalize} has a health of #{health3}.".center(60, '*')


puts "#{formated_name} #{health4} health"


