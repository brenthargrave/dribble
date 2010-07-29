module Dribble
  class Player
    class << self
      
      
      ##
      # Find shots for a given player
      #
      # @param  [String/Integer]
      # @return [Hash]
      # @api    public
      #
      def find(id, options={})
        Dribble::Request.get("/players/#{id}/shots", setup_options(options))
      end
      
      
      ##
      # Followers
      #
      # @param  [String/Integer]
      # @return [Hash]
      # @api    public
      #
      def followers(id, options={})
        Dribble::Request.get("/players/#{id}/shots/following", setup_options(options))
      end
      
      
      ##
      # Profile
      #
      # @param  [String/Integer]
      # @return [Hash]
      # @api    public
      #
      def profile(id)
        Dribble::Request.get("/players/#{id}")
      end
      
      
      
      private
        
        def setup_options(options)
          {:per_page => 30, :page => 1}.merge(options)
        end
      
    end
  end
end