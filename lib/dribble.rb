$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'uri'

require 'rubygems'
require 'em-http-request'
require 'yajl'

base = File.expand_path(File.dirname(__FILE__))

# Require Open Class Extensions
Dir[File.join(File.join(base, 'core_ext'), '*.rb')].each { |file| require file }

require File.join(base, 'dribble/version')

module Dribble
  autoload :Request,              'dribble/request'
  autoload :NoMorePagesAvailable, 'dribble/exceptions'
  
  # Custom Objects for easy usage of the Dribble API
  autoload :Player,               'dribble/player'
  autoload :Players,              'dribble/players'
  autoload :Shot,                 'dribble/shot'
  autoload :Shots,                'dribble/shots'
  autoload :Popular,              'dribble/shots'
  autoload :Debut,                'dribble/shots'
  autoload :Everyone,             'dribble/shots'
  autoload :Following,            'dribble/shots'
  autoload :Followers,            'dribble/players'
  autoload :Draftees,             'dribble/players'
  
  # A slimmer API that converts JSON to a Hash. No Object creation overhead.
  module API
    autoload :Player,             'dribble/api/player'
    autoload :Shot,               'dribble/api/shot'
  end
end