dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require File.join(dir, 'dribble')

# puts "Find a specific shot by ID"
# shot =  Dribble::Shot.for(1)
# puts shot.inspect
#  
# puts
# puts "Everyone's shots"
# puts Dribble::Shot.everyones.inspect
# 
# 
# puts
# puts "Debut shots"
# puts Dribble::Shot.debuts.inspect


# puts
# puts "Popular shots"
# popular = Dribble::Shot.popular
# puts popular.inspect
# puts
# popular_page_2 = popular.next_page
# puts popular_page_2.inspect


# puts
# puts "Dan's Following these shots"
# following = Dribble::Shot.following(1)
# puts following.inspect
# puts
# following_page_2 = following.next_page
# puts following_page_2.inspect