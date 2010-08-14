$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'dribble'
require 'spec'
require 'spec/autorun'

require 'rubygems'

# require 'fakeweb'
# require 'fakeweb_matcher'

# Dir[File.join(File.dirname(__FILE__), 'support', '**', '*.rb')].each { |file| require file }
# FakeWeb.allow_net_connect = false


# require File.join(File.dirname(__FILE__), '../lib/dribble.rb')

Spec::Runner.configure do |config|
  
end
