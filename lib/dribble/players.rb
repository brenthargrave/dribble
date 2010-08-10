module Dribble
  class Players
    attr_reader :players, :page, :pages, :per_page, :total
    
    def initialize(players, attributes={})
      @players  = players
      @page     = attributes[:page]
      @pages    = attributes[:pages]
      @per_page = attributes[:per_page]
      @total    = attributes[:total]
    end
    
    
    def next_page
      api_endpoint  = self.class.to_s.split('::').last.downcase.to_sym
      options       = {:page => self.page.to_i + 1}
      raise Dribble::NoMorePagesAvailable.new('You are already on the last page.') if options[:page] > self.pages.to_i
      Dribble::Player.send(api_endpoint, options)
    end
    
  end
end


module Dribble
  class Followers < Players
  end
end

module Dribble
  class Draftees < Players
  end
end