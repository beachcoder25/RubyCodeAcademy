#Conditional statements
# Put end after last conditional statement, not after each

a = 25
b = 46

if a < b
  puts "#{a} is less than #{b}"
elsif a > b
  puts "#{a} is greater than than #{b}"
else
  puts "#{a} is equal to #{b}"
end
    
#####################################################################################

# unless statment
# checks if something is FALSE
# Use this instead of reversing your conditional statments

hungry = false

unless hungry # NOT hungry
  puts "I'm writing Ruby programs!"
else # am hungry
  puts "Time to eat!"
end

# Addl example

puts "Lets do this!" unless 99 < 0

#####################################################################################

# comparators
# same as Java
# all tests evaluate to True

test_1 = 17 > 16

test_2 = 21 < 30

test_3 = 9 <= 9

test_4 = -11 < 4

#####################################################################################

# &&, ||, !
# same as Java

# boolean_1 = 77 < 78 && 77 < 77
boolean_1 = false

# boolean_2 = true && 100 >= 100
boolean_2 = true

# boolean_3 = 2**3 == 8 && 3**2 == 9
boolean_3 = 

#####################################################################################

# Nested boolean operatrs

# boolean_1 = (3 < 4 || false) && (false || true)
boolean_1 = true

# boolean_2 = !true && (!true || 100 != 5**2)
boolean_2 = false

# boolean_3 = true || !(true || false)
boolean_3 = true


# Example 