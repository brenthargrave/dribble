module Dribble
  class Player
    attr_reader :id, :name, :url, :avatar_url, :location, :created_at, :draftees_count,
                :following_count, :shots_count, :followers_count, :following, :shots,
                :drafted_by_player_id, :draftees_count
    
    
    def initialize(attr={})
      attr.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
    
    
    ##
    # Following
    #
    # @param  [Hash]
    # @return [Array]
    # @api    public
    #
    def following(options={})
      @following ||= Dribble::API::Shot.following(self.id, options)
    end
    
    
    ##
    # Player's Shots
    #
    # @param  [Hash]
    # @return [Array]
    # @api    public
    #
    def shots(options={})
      @shots ||= Dribble::API::Player.find_shots(self.id, options)
    end
    
    
    ##
    # Player's Shots
    #
    # @param  [Hash]
    # @return [Array]
    # @api    public
    #
    def draftees(options={})
      @draftees ||= Dribble::API::Player.draftees(self.id, options)
    end
    
    
    ##
    # Player's Shots
    #
    # @param  [Hash]
    # @return [Array]
    # @api    public
    #
    def followers(options={})
      @followers ||= Dribble::API::Player.followers(self.id, options)
    end
    
    
    class << self
      
      
      ##
      # Find shots for a given player
      #
      # @param  [String/Integer]
      # @return [Object]
      # @api    public
      #
      def find_shots(id, options={})
        results = Dribble::API::Player.find_shots(id, options)
        Dribble::Shots.new(format_shots(results), results)
      end
  
  
      ##
      # Following Shots
      #
      # @param  [String/Integer]
      # @return [Object]
      # @api    public
      #
      def following_shots(id, options={})
        results = Dribble::API::Player.following_shots(id, options)
        Dribble::Shots.new(format_shots(results), results)
      end

      
      ##
      # Followers
      #
      # @param  [String/Integer]
      # @return [Object]
      # @api    public
      #
      def followers(id, options={})
        results = Dribble::API::Player.followers(id, options)
        Dribble::Players.new(format_players(results), results)
      end
      
      
      ##
      # Draftees
      #
      # @param  [String/Integer]
      # @return [Object]
      # @api    public
      #
      def draftees(id, options={})
        results = Dribble::API::Player.draftees(id, options)
        Dribble::Players.new(format_players(results), results)
      end
      
  
      ##
      # Profile
      #
      # @param  [String/Integer]
      # @return [Object]
      # @api    public
      #
      def profile(id)
        new(Dribble::API::Player.profile(id))
      end
      alias_method :find, :profile
      
    
      private
        
        
        ##
        # Format Shots
        #
        # @param  [Array, Symbold]
        # @return [Object]
        # @api    private
        #
        def format_shots(response, index = :shots)
          response[index].map do |shot|
            Dribble::Shot.new(shot)
          end
        end
        
        
        ##
        # Format Player
        #
        # @param  [Array, Symbold]
        # @return [Object]
        # @api    private
        #
        def format_players(response, index = :players)
          response[index].map do |player|
            Dribble::Player.new(player)
          end
        end
    end
    
  end
end