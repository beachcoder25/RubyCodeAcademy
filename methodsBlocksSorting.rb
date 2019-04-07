# definie a function and call it
def array_of_10
    puts (1..10).to_a
  end
  
  array_of_10

#############################################

# splat arguments (*)
# tells the program that the method can receive one or more arguments

def what_up(greeting, *friends)
    friends.each { |friend| puts "#{greeting}, #{friend}!" }
  end
  
  what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

# Output
# What up, Ian!
# What up, Zoe!
# What up, Zenas!
# What up, Eleanor!


#############################################

# 1. Define a greeter method that takes a single string parameter, name, and returns a string greeting that person.
# 2. Define a by_three? method that takes a single integer parameter, number, and returns true if that number is evenly divisible by three and false if not.


def greeter (name)
    return "Hello #{name}"
  end
  
  def by_three?(number)
    if(number % 3 == 0)
      return true
    else
      return false
    end
  end


#############################################

# Blocks, like way to create methods that dont have a name

3.times do
    puts "I'm a code block!"
  end
  
  3.times { puts "As am I!" }

# Output
# I'm a code block!
# I'm a code block!
# I'm a code block!
# As am I!
# As am I!
# As am I!


#############################################

# Methods can take blocks as parameters
# Good for abstraction (Makes something simpler)

# The block, {|i| puts i}, is passed the current
# array item each time it is evaluated. This block
# prints the item. 
[1, 2, 3, 4, 5].each { |i| puts i }

# This block prints the number 5 for each item.
# (It chooses to ignore the passed item, which is allowed.)
[1, 2, 3, 4, 5].each { |i| puts i * 5 }


#############################################

# Sorting
# .sort!, sorts an array in-place

#

#############################################

# <=>, Combined comparison operator
# returns 0 if 1st operand = 2nd operand
# 1 if 1st operand > 2nd operand
# -1 if 1st operand < 2nd operand

book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

puts book_1 <=> book_2

# Output
# 1

#############################################

# Reverse sort an array

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.sort!.reverse! { |book1, book2| book1 <=> book2}

puts books

# alternative implementation

books.sort do |first, second| 
    if first < second # first book before second alphabetically
      -1
   elsif first > second # first after second
     1
   else # first and second are the same
     0
   end
 end

 #############################################

 # Blocks review
 # multiply each array element by self, print to console

 my_array = [1, 2, 3, 4, 5]

 my_array.each do |element|
   puts element * element
 end
 
 #############################################

 # Sorting with control flow

 # rev defaults to false if only 1 argument is entered

def alphabetize(arr, rev = false)
    arr.sort!
    
    if rev == true
      arr.reverse!
    else
      arr
    end
    return arr
  end
  
  numbers = [2,3,1000000]
  
  puts alphabetize(numbers)

  #Output
  # [2, 3, 1000000]