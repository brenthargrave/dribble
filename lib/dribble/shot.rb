module Dribble
  class Shot
    attr_reader   :id, :title, :url, :image_url, :image_teaser_url, :width, :height, :created_at, :player
    
    
    def initialize(attributes={})
      attributes.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
      @player = Dribble::Player.new(attributes[:player]) if attributes[:player]
    end
    
    
    ##
    # By ID
    #
    # @param    [Integer]
    # @return   [Hash]
    # @api      public
    #
    def self.for(id)
      new(Dribble::API::Shot.for(id))
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
    def self.everyones(options={})
      results = Dribble::API::Shot.everyones(options)
      Dribble::Everyones.new(format_shots(results), results)
    end
  
  
    ##
    # Debuts
    #
    # @param    [Hash]
    #           e.g. {:per_page => 30, :page => 1}
    #
    # @return   [Array]
    # @api      public
    #
    def self.debuts(options={})
      results = Dribble::API::Shot.debuts(options)
      Dribble::Debuts.new(format_shots(results), results)
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
    def self.popular(options={})
      results = Dribble::API::Shot.popular(options)
      Dribble::Popular.new(format_shots(results), results)
    end
    

    private
    
      def self.format_shots(response, index = :shots)
        response[index].map do |shot|
          new(shot)
        end
      end

  end
end