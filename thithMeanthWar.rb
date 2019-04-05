print "Enter your favorite day of the week: "
user_input = gets.chomp.downcase! # ! permanently alters variable (in-place)

# .include? evaluates to T or F

if user_input.include? "s"
  puts "We have an s!"
end

##############################################################################


# .gsub!
# Global substitution, ! must be used to change permanently (in-place_)

print "Enter your favorite day of the week: "
user_input = gets.chomp.downcase! # ! permanently alters variable (in-place)

# .include? evaluates to T or F

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "Modified string #{user_input}"
else
  puts "The user didn't enter an 's'"
end



##############################################################################


