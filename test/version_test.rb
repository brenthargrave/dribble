require File.join(File.dirname(__FILE__), 'helper')

class VersionTest < Test::Unit::TestCase
  
  context "We have a version number" do
    setup do
      @version = Dribble.version
    end
    
    should "not be nil" do
      assert_not_nil @version
    end
    
    should "have the correct pattern" do
      assert_match(/\d{1,2}\.\d{1,2}\.\d{1,2}/, @version)
    end
  end
  
end