#arrays, indexing


# hashes, like a Python dictionary
# key1 => value1 , assignsa key to a value

my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

# Output:
# Eric
# 26
# true



# creates a new empty hash
Hash.new

# adding to an empty hash, then printing value
pets = Hash.new
pets["Elvis"] = "cat"

puts pets["Elvis"]


# alternative implementation
pets = {
  "Elvis" => "cat",
}

puts pets["Elvis"]


# for loop for array vs hash

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

# Output:
# Milhouse
# Ralph
# Nelson
# Otto
# Homer: dad
# Marge: mom
# Lisa: sister
# Maggie: sister
# Abe: grandpa
# Santa's Little Helper: dog


# Iterating over a multi-diimensional array
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each {|sub_array| sub_array.each{ |x| puts x }}

# alternative implementation

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |sub_array| sub_array.each do |x| puts x end end


# Iterate over hashes
# must assign key to one element, and value to another elemnt

secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |key, value|
  puts "#{key}: #{value}"
end
  