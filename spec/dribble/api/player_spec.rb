require File.expand_path(File.dirname(__FILE__) + '../../../spec_helper')

describe Dribble::API::Player do
  
  describe "A Players draftees" do
    before(:all) do
      @draftees = Dribble::API::Player.draftees('simplebits')
    end
    
    it "should not be empty" do
      @draftees.should_not be_empty
    end
    
    it "should be a hash" do
      @draftees.class.should == Hash
    end
    
    it "should have the per page count be 30, the default" do
      @draftees[:per_page].should == 30
    end
    
    it "should have sent back the first page" do
      @draftees[:page].should == 1
    end
    
    it "should have an array of players" do
      @draftees[:players].class.should == Array
    end
    
    it "should have an array of shots that is not empty" do
      @draftees[:players].should_not be_nil
    end
    
    it "should have the number of pages" do
      @draftees[:pages].should_not be_nil
    end
    
    it "should have the total number of shots for this player" do
      @draftees[:total].should_not be_nil
    end
  end
  
  describe "A Players followers" do
    before(:all) do
      @followers = Dribble::API::Player.followers('simplebits')
    end
    
    it "should not be empty" do
      @followers.should_not be_empty
    end
    
    it "should be a hash" do
      @followers.class.should == Hash
    end
    
    it "should have the per page count be 30, the default" do
      @followers[:per_page].should == 30
    end
    
    it "should have sent back the first page" do
      @followers[:page].should == 1
    end
    
    it "should have an array of players" do
      @followers[:players].class.should == Array
    end
    
    it "should have an array of shots that is not empty" do
      @followers[:players].should_not be_nil
    end
    
    it "should have the number of pages" do
      @followers[:pages].should_not be_nil
    end
    
    it "should have the total number of shots for this player" do
      @followers[:total].should_not be_nil
    end
  end
  
  describe "The shots a player is following" do
    before(:all) do
      @shots_following = Dribble::API::Player.following_shots('simplebits')
    end
    
    it "should not be empty" do
      @shots_following.should_not be_empty
    end
    
    it "should be a hash" do
      @shots_following.class.should == Hash
    end
    
    it "should have the per page count be 30, the default" do
      @shots_following[:per_page].should == 30
    end
    
    it "should have sent back the first page" do
      @shots_following[:page].should == 1
    end
    
    it "should have an array of shots" do
      @shots_following[:shots].class.should == Array
    end
    
    it "should have an array of shots that is not empty" do
      @shots_following[:shots].should_not be_empty
    end
    
    it "should have the number of pages" do
      @shots_following[:pages].should_not be_nil
    end
    
    it "should have the total number of shots for this player" do
      @shots_following[:total].should_not be_nil
    end
  end
  
  describe "A Players profile" do
    before(:all) do
      @profile = Dribble::API::Player.profile('simplebits')
    end
    
    it "should not be empty" do
      @profile.should_not be_empty
    end
    
    it "should be a hash" do
      @profile.class.should == Hash
    end
    
    it "should have the location" do
      @profile[:location].should_not be_nil
    end
    
    it "should have date the account was created at" do
      @profile[:created_at].should_not be_nil
    end
    
    it "should have the following count" do
      @profile[:following_count].should_not be_nil
    end
    
    it "should have the draftees count" do
      @profile[:draftees_count].should_not be_nil
    end
    
    it "should have the shots count" do
      @profile[:shots_count].should_not be_nil
    end
    
    it "should have the drafted by player" do
      @profile[:drafted_by_player].should be_nil
    end
    
    it "should have the avatar url" do
      @profile[:avatar_url].should_not be_nil
    end
    
  end
  
  describe "Finding shots for a player" do
    before(:all) do
      @player_shots = Dribble::API::Player.find_shots('simplebits')
    end
    
    it "should not be nil" do
      @player_shots.should_not be_nil
    end
    
    it "should be a hash" do
      @player_shots.class.should == Hash
    end
    
    it "should have the per page count be 30, the default" do
      @player_shots[:per_page].should == 30
    end
    
    it "should have sent back the first page" do
      @player_shots[:page].should == 1
    end
    
    it "should have an array of shots" do
      @player_shots[:shots].class.should == Array
    end
    
    it "should have an array of shots that is not empty" do
      @player_shots[:shots].should_not be_empty
    end
    
    it "should have the number of pages" do
      @player_shots[:pages].should_not be_nil
    end
    
    it "should have the total number of shots for this player" do
      @player_shots[:total].should_not be_nil
    end
  end
  
end