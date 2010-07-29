dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require File.join(dir, 'dribble')

puts "Find Player's Shots by name"
puts Dribble::Player.find('simplebits').inspect

puts
puts "Find Player's Profile"
puts Dribble::Player.profile('simplebits').inspect

puts
puts "Find Player's Followers"
puts Dribble::Player.followers('simplebits').inspect