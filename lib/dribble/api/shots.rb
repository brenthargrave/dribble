module Dribble
  module API
    class Shots
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
        # List
        #
        # @param    [Hash]
        #           e.g. {:per_page => 30, :page => 1}
        #
        # @return   [Array]
        # @api      public
        #
        def list(options={})
          Dribble::Request.get("/shots/everyone", setup_options(options))
        end
        
        private
          
          def setup_options(options)
            {:per_page => 30, :page => 1}.merge(options)
          end
        
      end
    end
  end
end