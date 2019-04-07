# Don't need an when if statement is all on one line

puts "It's true!" if true

puts "Output" unless false

##############################################

# ternary expression
# takes in 3 arguments, boolean, expression to evaluate if true, and expression to evaluate if false

puts 25 > 100 ? "25 greater than 100!" : "25 less than 100!"

# Output:
# 25 less than 100!

##############################################

# when/then statements
# Must have end block!!!

puts "Hello there!"
greeting = gets.chomp

case greeting when "English" then puts "Hello!" when "French" then puts "Bonjour!" when "German" then puts "Guten Tag!" when "Finnish" then puts "Haloo!" else puts "Idk that language yo"
end

##############################################

# ||= statement

favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book

# Short example

favorite_language ||= "C++"
puts favorite_language

##############################################

# Implicit return
# Ruby will return the result of the last ecaluated expression

# Non-implicit

def multiple_of_three(n)
    return n % 3 == 0 ? "True" : "False"
  end
  
  puts multiple_of_three(8)

# Implicit version

def multiple_of_three(n)
    n % 3 == 0 ? "True" : "False"
  end
  
  puts multiple_of_three(8)

##############################################

# Instead of for loops, use the .times method
# Or to repeat for each element in an array, use .each

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each {|n| if n % 2 == 0 then puts n end} # MUST have end

##############################################

# .upto, .downto
# use these instead of using a counter in a for loop

# Prints letters L-P
"L".upto("P"){ |l| puts l}

##############################################

# .respond_to?
# tells us if an object can receive the provided method or not

# .next returns integer following provided integer, in this case 27
age = 26
puts age.respond_to?(:next) # Must use symbol!!!

# Output
# true

##############################################

# Shovel symbol to add to array
# Used instead of .push, or +=

alphabet = ["a", "b", "c"] 
alphabet << 'd' # Update me!

puts alphabet


caption = "A giraffe surrounded by "
caption << "weezards!" # Me, too!

puts caption

# Output
# ["a", "b", "c", "d"]
# A giraffe surrounded by weezards!

##############################################

# string interpolation
# for non-string values MUST use .to_s

age = 26
"I am " + age.to_s + " years old."
# ==> "I am 26 years old."
"I am " << age.to_s << " years old."
# ==> "I am 26 years old."

# BETTER, RUBY WAY!!!

"I love #{drink}."
# ==> I love espresso.
"I am #{age} years old."
# ==> I am 26 years old.


##############################################

# Re-factor practice

if 1 < 2
    puts "One is less than two!"
  end

# Re-factored

if 1 < 2 then puts "One is less than two!" end

# ternary

if 1 < 2
    puts "One is less than two!"
  else
    puts "One is not less than two."
  end

# Refacotred

puts 1 < 2 ? "One is less than two!": "One is not less than two."


# case

puts "What's your favorite language?"
language = gets.chomp

if language == "Ruby"
  puts "Ruby is great for web apps!"
elsif language == "Python"
  puts "Python is great for science."
elsif language == "JavaScript"
  puts "JavaScript makes websites awesome."
elsif language == "HTML"
  puts "HTML is what websites are made of!"
elsif language == "CSS"
  puts "CSS makes websites pretty."
else
  puts "I don't know that language!"
end

# refactored
# MUST use puts!!!

puts "What's your favorite language?"
language = gets.chomp

case language when"Ruby" then puts "Ruby is great for web apps!" when "Python" then puts "Python is great for science." when "JavaScript" then puts "JavaScript makes websites awesome." when "HTML" then puts "HTML is what websites are made of!" when "CSS" then puts "CSS makes websites pretty." 
else "I don't know that language!" end

##############################################




##############################################



##############################################