module Dribble
  module API
    class Player
      class << self
        
        ##
        # Find shots for a given player
        #
        # @param  [String/Integer]
        # @return [Hash]
        # @api    public
        #
        def find_shots(id, options={})
          Dribble::Request.get("/players/#{id}/shots", setup_options(options))
        end
    
    
        ##
        # Following Shots
        #
        # @param  [String/Integer]
        # @return [Hash]
        # @api    public
        #
        def following_shots(id, options={})
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
      
      
        ##
        # Followers
        #
        # @param  [String/Integer]
        # @return [Hash]
        # @api    public
        #
        def followers(id, options={})
          Dribble::Request.get("/players/#{id}/followers", setup_options(options))
        end
      
      
      
        ##
        # Followers
        #
        # @param  [String/Integer]
        # @return [Hash]
        # @api    public
        #
        def draftees(id, options={})
          Dribble::Request.get("/players/#{id}/draftees", setup_options(options))
        end

    
        private
      
          def setup_options(options)
            {:per_page => 30, :page => 1}.merge(options)
          end
      
      end
    end
  end
end