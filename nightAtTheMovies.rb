#CRUD
# Create, remove, update, delte
# Important for RoR databases

# Case statement
# like case in Java

movies = {
  'American Psycho' => 9
  }

puts "What would you like to do?"

choice = gets.chomp

case choice # make sure this variable matches gets.chomp variable
  when "add"
  	puts "Added!"
  when "update"
  	puts "Updated!"
  when "display"
 		puts "Movies!"
  when "delete"
  	puts "Deleted!"
	else
  	puts "Error!"
end


######################################################

# Prompt user to enter new movie and rating, store in hash

# Case statement
# like case in Java

# Case statement
# like case in Java

movies = {
  'American Psycho' => 9
  }

puts "What would you like to do?"

choice = gets.chomp

case choice # make sure this variable matches gets.chomp variable
  when "add"
  	print "Enter a movie title: "
  	title = gets.chomp
  	print "Enter a rating: "
      rating = gets.chomp
      
    # to_i, converst string to integer
    
    movies[title.to_sym] = rating.to_i
    #movies.push(title, rating)
    
    # Check if movie already exists

    if movies[title.to_sym] == nil
        movies[title.to_sym] = rating.to_i
    else
        puts "title already in hash"
    end
        
  # Update title with new rating
  when "update"
  	print "Enter a movie title: "
  	title = gets.chomp
  	if movies[title] == nil
      puts "ERROR: Movie not in hash"
    else
      print "Enter a new rating: "
      rating = gets.chomp
      movies[title] = rating
    end


when "display"
    movies.each do |title, rating| 
    puts "#{title}: #{rating}"
    end

when "delete"
  	print "Enter a movie title: "
  	title = gets.chomp
  	
  	if movies[title] != nil
      movies.delete(title)
    else
      puts "Movie does not exist"
    end

else
    puts "Error!"
end


  

  
