require File.join(File.dirname(__FILE__), '../helper')

class PlayerTest < Test::Unit::TestCase
  context "Successful requests to the Dribbble API" do
    setup do
      # @find_shots       = Dribble::API::Player.find_shots('simplebits')
      # @following_shots  = Dribble::API::Player.following_shots('simplebits')
      # @profile          = Dribble::API::Player.profile('simplebits')
      # @followers        = Dribble::API::Player.followers('simplebits')
      # @draftees         = Dribble::API::Player.draftees('simplebits')
    end
  
    should "return an array (of hashes) of shots for a given player" do
      assert true
    end
  
    should "return an array (of hashes) of following shots for a given player" do
      assert true
    end
  
    should "return a hash of the players profile" do
      assert true
    end
  
    should "return the followers for a given player" do
      assert true
    end
  
    should "return the draftees of a given player" do
      assert true
    end
  end
end