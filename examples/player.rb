dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require File.join(dir, 'dribble')

# puts "Find Player's Shots by name"
# player = Dribble::Player.find_shots('simplebits')
# puts player.inspect
# 
# 
puts
puts "Find Player's Profile"
player2 = Dribble::Player.profile('simplebits') # OR Dribble::Player.find('simplebits')
puts player2.inspect


# puts
# puts "Find the shots that a specific Player is following"
# player3 = Dribble::Player.following_shots('simplebits')
# puts player3.inspect

# 
# puts
# puts "Find a players followers"
# player4 = Dribble::Player.followers('simplebits')
# puts player4.inspect
# 
# 
# puts
# puts "Find a players draftees"
# player5 = Dribble::Player.draftees('simplebits')
# puts player5.inspect






# puts
# puts "Get a Player's Profile"
# player = Dribble::Player.find(1)
# puts player.inspect

# puts
# puts "Take this player and see what shots they are following"
# following_shots = player.following
# puts following_shots.inspect

# puts
# puts "Take this player and see what shots they've put up"
# my_shots = player.shots
# puts my_shots.inspect


# puts
# puts "Take this player and see their followers"
# my_shots = player.followers
# puts my_shots.inspect

# puts
# puts "Take this player and see their draftees"
# my_shots = player.draftees
# puts my_shots.inspect