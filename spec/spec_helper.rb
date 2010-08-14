$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'dribble'
require 'spec'
require 'spec/autorun'

require 'rubygems'

require 'fakeweb'
require 'fakeweb_matcher'

# require File.join(File.dirname(__FILE__), '../lib/dribble.rb')

FakeWeb.allow_net_connect = false

Spec::Runner.configure do |config|
end
