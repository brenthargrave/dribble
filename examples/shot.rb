dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require File.join(dir, 'dribble')

puts "Find a specific shot by ID"
puts Dribble::Shot.for(1).inspect

puts
puts "Everyone's shots"
puts Dribble::Shot.everyones.inspect


puts
puts "Debut shots"
puts Dribble::Shot.everyones.inspect


puts
puts "Popular shots"
puts Dribble::Shot.everyones.inspect