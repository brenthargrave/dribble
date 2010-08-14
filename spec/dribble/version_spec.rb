require File.join(File.dirname(__FILE__), '../spec_helper')

describe Dribble::Version do
  describe "When the version is set" do
    before(:all) do
      @version = Dribble.version
    end
    
    it "should not be blank" do
      @version.should_not be_empty
    end
    
    it "should match the correct pattern" do
      @version.should match /\d{1,2}\.\d{1,2}\.\d{1,2}/
    end
    
  end
end