module Dribble
  class Player
    attr_reader :id, :name, :url, :avatar_url, :location, :created_at
    
    
    def initialize(attr={})
      attr.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
    
    
    ##
    # Find shots for a given player
    #
    # @param  [String/Integer]
    # @return [Hash]
    # @api    public
    #
    def self.find(id, options={})
      results = Dribble::API::Player.find(id, options)
      Dribble::Shots.new(format_shots(results), results)
    end
  
  
    ##
    # Following Shots
    #
    # @param  [String/Integer]
    # @return [Hash]
    # @api    public
    #
    def self.following_shots(id, options={})
      results = Dribble::API::Player.following_shots(id, options)
      Dribble::Shots.new(format_shots(results), results)
    end

  
    ##
    # Profile
    #
    # @param  [String/Integer]
    # @return [Hash]
    # @api    public
    #
    def self.profile(id)
      new(Dribble::API::Player.profile(id))
    end
    
    private
      
      def self.format_shots(response, index = :shots)
        response[index].map do |shot|
          Dribble::Shot.new(shot)
        end
      end
    
  end
end