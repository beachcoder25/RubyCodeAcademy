#####################################

# Iterate over a hash
# print each value

matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

matz.each do |k,v|
  puts matz[k]
end

# Output
# Yukihiro
# Matsumoto
# 47
# Japanese
# Matz


#####################################

# nil 
# a non-true value, meaning nothing at all (Null)
# false != nil

# nil is a default value
# You can change the default value of your hashes

no_nil_hash = Hash.new("Default val")

#####################################

# Symbols
# Like a name, but not a string
# Like keys, each symbol can only have 1 value
# .object_idm gets the ID of an object, this is how Ruby knows if 2 objects are identical

puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

# Output
# 11229380
# 11229160
# 802268
# 802268



# symbols always start with a colon (:)
# must be valid Ruby variable names, must start with letter or _



# Symbols are used primarily as hash keys or for referencing method names
# Good for hash keys because tehy are:
# immutable, cant be change once created
# only 1 copy of any symbol exists at a given time
# symbols as keys are faster than strings as keys becuas eof previous 2 reasons



# Convert between symbols and strings
# .to_s, .to_sym, .push (adds to symbols in this example)

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |s| 
 symbols.push(s.to_sym)
end 
print symbols


# .intern does same thing as .to_sym

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |s| 
 symbols.push(s.intern)
end 
print symbols


# Output for both
# [:HTML, :CSS, :JavaScript, :Python, :Ruby]


#####################################

# =>
# known as a hash rocket
# make sure to use commas between key value declarations

movies = {
  
  :americanPscyho => 'classic',
  :prometheus => 'awesome',
  }

  # Ruby 1.9 syntax for symbols and hash rockets
  # colon goes after variable, no rocket symbol needed
  
  movies = {
  americanPscyho: 'classic',
  prometheus: 'awesome',
  }

  #####################################

  # .select
  # filters hash for values that meet certain criteria

  # returns movies with a rating > 3

  movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select{|name, rating| rating > 3}

#####################################

# .each_key
# .each_value
# Returns only key/value

# print out only the movie titles

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

movie_ratings.each_key { |k| puts k }

# Output
# memento
# primer
# the_matrix
# truman_show
# red_dawn
# skyfall
# alex_cross
# uhf
# lion_king



