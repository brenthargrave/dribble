dir = File.expand_path(File.join(File.dirname(__FILE__), '../..', 'lib'))
require File.join(dir, 'dribble')

# puts "Find a specific shot by ID"
# shot =  Dribble::API::Shot.for(1)
# puts shot
#  
# puts
# puts "Everyone's shots"
# puts Dribble::API::Shot.everyones
# 
# 
# puts
# puts "Debut shots"
# puts Dribble::API::Shot.debuts
# 
# 
# puts
# puts "Popular shots"
# popular = Dribble::API::Shot.popular
# puts popular