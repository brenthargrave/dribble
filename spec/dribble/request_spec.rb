require File.join(File.dirname(__FILE__), '../spec_helper')

describe "The request api" do
  
  describe "A successful request" do
    
    before(:all) do
      @success = Dribble::Request.get("/players/revans")
    end
    
    it "should make a successful get request" do
      @success.should be_true
    end
    
    it "should be a hash" do
      @success.class.should == Hash
    end
    
  end
  
  
  describe "An unsuccessful request" do
    
    before(:all) do
      @failure = Dribble::Request.get("/players/simblebits238952352342342")
    end
    
    it "should make a successful get request" do
      @failure.should == "Not found"
    end
    
  end
  
end