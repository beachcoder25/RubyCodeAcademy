# while loop


i = 0
while i < 5
  puts i
  # i++ gives an error
  i = i + 1
  
end

# i++ operator doesn't work in Ruby, must use +=

counter = 1
while counter < 11
  puts counter
  counter += 1
end

##############################################################################

# until loop
# Goes until condition is met

counter = 1
until counter > 10
  puts counter
  # Add code to update 'counter' here!
  counter = counter + 1
  
end

##############################################################################

# .. goes up to and including teh higher number


for num in 1..15
    puts num
end

# ... excludes higher number
for num in 1...15
    puts num
end

##############################################################################


# Iterators repeatedly invoke a block of code

i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end

# Output
# 191817161514131211109876543210 

##############################################################################


# next, can be used to skip over certain steps in the loop
# example prints only even values

i = 20
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i}"
  break if i <= 0
end


##############################################################################


# arrays
# .each, applys expression to each element,one at a time

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}\n"
end

# Output:
# 11
# 12
# 13
# 14
# 15

##############################################################################


# .times
# performs a task on each element a specified number of times

25.times { puts "My favorite number is 25"}

# Prints statment 25 times


##############################################################################


# print numbers 1-50 inclusive

i = 1
while i <= 50 do
  print i
  i += 1
end

# same thing, using until 

i = 1
until i > 50 do
  print i
  i += 1
end

# same thing, using ..

for i in 1..50
    print i
    i += 1
  end

  # print "Ruby!" 30 times

i = 0
loop do
  i += 1
  print "Ruby!"
  break if i == 30
end

# Alternatively using .times

30.times { print "Ruby!" }
