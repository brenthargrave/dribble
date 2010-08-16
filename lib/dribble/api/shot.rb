module Dribble
  module API
    class Shot

      class << self
        
        ##
        # By ID
        #
        # @param    [Integer]
        # @return   [Hash]
        # @api      public
        #
        def for(id)
          Dribble::Request.get("/shots/#{id.to_i}")
        end
      
      
        ##
        # Following
        #
        # @param    [String/Integer, Hash]
        #           e.g. {:per_page => 30, :page => 1}
        #
        # @return   [Hash]
        # @api      public
        #
        def following(id, options={})
          Dribble::Request.get("/players/#{id}/shots/following", setup_options(options))
        end
      
    
        ##
        # Everyones
        #
        # @param    [Hash]
        #           e.g. {:per_page => 30, :page => 1}
        #
        # @return   [Array]
        # @api      public
        #
        def everyones(options={})
          Dribble::Request.get("/shots/everyone", setup_options(options))
        end
        alias_method :everyone, :everyones
      
    
        ##
        # Debuts
        #
        # @param    [Hash]
        #           e.g. {:per_page => 30, :page => 1}
        #
        # @return   [Array]
        # @api      public
        #
        def debuts(options={})
          Dribble::Request.get("/shots/debuts", setup_options(options))
        end
    
    
        ##
        # Popular
        #
        # @param    [Hash]
        #           e.g. {:per_page => 30, :page => 1}
        #
        # @return   [Array]
        # @api      public
        #
        def popular(options={})
          Dribble::Request.get("/shots/popular", setup_options(options))
        end

    
        private
      
      
          def setup_options(options)
            {:per_page => 30, :page => 1}.merge(options)
          end
          
      end
    end
  end
end