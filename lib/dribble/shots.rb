module Dribble
  class Shots
    attr_reader :shots, :page, :pages, :per_page, :total
    
    def initialize(shots, attributes={})
      @shots    = shots
      @page     = attributes[:page]
      @pages    = attributes[:pages]
      @per_page = attributes[:per_page]
      @total    = attributes[:total]
    end
    
    
    def next_page
      api_endpoint  = self.class.to_s.split('::').last.downcase.to_sym
      options       = {:page => self.page.to_i + 1}
      raise Dribble::NoMorePagesAvailable.new('You are already on the last page.') if options[:page] > self.pages.to_i
      Dribble::Shot.send(api_endpoint, options)
    end
    
  end
end


module Dribble
  class Popular < Shots
  end
end

module Dribble
  class Everyones < Shots
  end
end

module Dribble
  class Debuts < Shots
  end
end

module Dribble
  class Following < Shots
  end
end