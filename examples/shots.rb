dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require File.join(dir, 'dribble')

puts "Find a specific shot by ID"
puts Dribble::API::Shots.for(1).inspect

puts
puts "Find shot list"
puts Dribble::API::Shots.list.inspect