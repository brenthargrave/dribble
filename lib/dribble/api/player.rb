module Dribble
  module API
    class Player
    

      ##
      # Find shots for a given player
      #
      # @param  [String/Integer]
      # @return [Hash]
      # @api    public
      #
      def self.find_shots(id, options={})
        Dribble::Request.get("/players/#{id}/shots", setup_options(options))
      end
    
    
      ##
      # Following Shots
      #
      # @param  [String/Integer]
      # @return [Hash]
      # @api    public
      #
      def self.following_shots(id, options={})
        Dribble::Request.get("/players/#{id}/shots/following", setup_options(options))
      end
    
    
      ##
      # Profile
      #
      # @param  [String/Integer]
      # @return [Hash]
      # @api    public
      #
      def self.profile(id)
        Dribble::Request.get("/players/#{id}")
      end

    
      private
      
        def self.setup_options(options)
          {:per_page => 30, :page => 1}.merge(options)
        end
      

    end
  end
end