puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

words = text.split

# 0 is default value, if we make a request for key that doesnt exist we get the default value returned to us
frequencies = Hash.new(0)

words.each { |word|
  frequencies[word] += 1
  }

frequencies = frequencies.sort_by do |word, count|
  count
end
frequencies.reverse!

# to_s changes integer to string so it can be printed
frequencies.each do |word, count|
  puts word + " " + count.to_s
end