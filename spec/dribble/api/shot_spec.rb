require File.expand_path(File.dirname(__FILE__) + '../../../spec_helper')

describe Dribble::API::Shot do
  
  describe "Debuts shot" do
    before(:all) do
      @shots = Dribble::API::Shot.debuts
    end
    
    it "should not be empty" do
      @shots.should_not be_empty
    end
    
    it "should be a hash" do
      @shots.class.should == Hash
    end
    
    it "should have the per page count be 30, the default" do
      @shots[:per_page].should == 30
    end
    
    it "should have sent back the first page" do
      @shots[:page].should == 1
    end
    
    it "should have an array of players" do
      @shots[:shots].class.should == Array
    end
    
    it "should have an array of shots that is not empty" do
      @shots[:shots].should_not be_nil
    end
    
    it "should have the number of pages" do
      @shots[:pages].should_not be_nil
    end
    
    it "should have the total number of shots for this player" do
      @shots[:total].should_not be_nil
    end
  end
  
  describe "Popular shot" do
    before(:all) do
      @shots = Dribble::API::Shot.popular
    end
    
    it "should not be empty" do
      @shots.should_not be_empty
    end
    
    it "should be a hash" do
      @shots.class.should == Hash
    end
    
    it "should have the per page count be 30, the default" do
      @shots[:per_page].should == 30
    end
    
    it "should have sent back the first page" do
      @shots[:page].should == 1
    end
    
    it "should have an array of players" do
      @shots[:shots].class.should == Array
    end
    
    it "should have an array of shots that is not empty" do
      @shots[:shots].should_not be_nil
    end
    
    it "should have the number of pages" do
      @shots[:pages].should_not be_nil
    end
    
    it "should have the total number of shots for this player" do
      @shots[:total].should_not be_nil
    end
  end
  
  describe "Everyone's shot" do
    before(:all) do
      @shots = Dribble::API::Shot.everyones
    end
    
    it "should not be empty" do
      @shots.should_not be_empty
    end
    
    it "should be a hash" do
      @shots.class.should == Hash
    end
    
    it "should have the per page count be 30, the default" do
      @shots[:per_page].should == 30
    end
    
    it "should have sent back the first page" do
      @shots[:page].should == 1
    end
    
    it "should have an array of players" do
      @shots[:shots].class.should == Array
    end
    
    it "should have an array of shots that is not empty" do
      @shots[:shots].should_not be_nil
    end
    
    it "should have the number of pages" do
      @shots[:pages].should_not be_nil
    end
    
    it "should have the total number of shots for this player" do
      @shots[:total].should_not be_nil
    end
  end
  
  describe "Finding a specific shot by its ID" do
    before(:all) do
      @shot = Dribble::API::Shot.for(1)
    end
    
    it "should not be empty" do
      @shot.should_not be_empty
    end
    
    it "should be a hash" do
      @shot.class.should == Hash
    end
    
    it "should have the height" do
      @shot[:height].should_not be_nil
    end
    
    it "should have an image url" do
      @shot[:image_url].should_not be_nil
    end
    
    it "should have a views count" do
      @shot[:views_count].should_not be_nil
    end
    
    it "should have the datetime in which it was created" do
      @shot[:created_at].should_not be_nil
    end
    
    it "should have the title of the shot" do
      @shot[:title].should_not be_nil
    end
    
    it "should have the comment count" do
      @shot[:comments_count].should_not be_nil
    end
    
    it "should have the likes count" do
      @shot[:likes_count].should_not be_nil
    end
    
    it "should have the player's information" do
      @shot[:player].should_not be_nil
    end
    
    it "should have the rebounds count" do
      @shot[:rebounds_count].should_not be_nil
    end
    
    it "should have the url of the image" do
      @shot[:url].should_not be_nil
    end
    
    it "should have the image teaser" do
      @shot[:image_teaser_url].should_not be_nil
    end
    
    it "should have the shot id" do
      @shot[:id].should_not be_nil
    end
    
    it "should have the width of the image" do
      @shot[:width].should_not be_nil
    end
  end
end