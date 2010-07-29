$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

libraries = %w[logger time date thread]
libraries.each { |library| require library }

require 'rubygems'
require 'yajl/http_stream'
require 'yajl'

base = File.expand_path(File.dirname(__FILE__))

# Require Open Class Extensions
Dir[File.join(File.join(base, 'core_ext'), '*.rb')].each { |file| require file }

require File.join(base, 'dribble/version')
# require File.join(base, 'dribble/exceptions')

module Dribble
  autoload :Request,        'dribble/request'
  
  module API
    autoload :Players,      'dribble/api/players'
    autoload :Shots,        'dribble/api/shots'
  end
end