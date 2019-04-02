# gets method, gets user input
# newline added automatically, .chomp removes newline

# String methods
# .capitalize , capatalizes first letter, makes rest lower case 
# .capitalize! , "Permanently" capitalizes variable for re-use

print "What's your first name? " 
first_name = gets.chomp.capitalize!

print "What's your last name? "
last_name = gets.chomp.capitalize!

print "What city are you from? "
city = gets.chomp.capitalize!

print "What state (Abbreviated)? "
state = gets.chomp.upcase!

# String interpolation, like a printf statement in Java
puts "Your name is #{first_name} #{last_name} and you are from #{city} #{state} "
