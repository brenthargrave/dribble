def fakeweb(filename)
  File.read(File.join(File.dirname(__FILE__), '..', 'fake_data', filename))
end

module EventMachine
  class HttpRequest
    
    def fake_get(options={}, &blk)
      case @uri
      when "http://api.dribbble.com/players/simplebits/shots"
      when "http://api.dribbble.com/players/simplebits/shots/following"
      when "http://api.dribbble.com/players/players/simplebits"
      when "http://api.dribbble.com/players/players/simplebits/followers"
      when "http://api.dribbble.com/players/players/simplebits/draftees"
        
      
      
      when "http://api.dribbble.com/shots/shots/1"
      when "http://api.dribbble.com/shots/shots/everyone"
      when "http://api.dribbble.com/shots/shots/debuts"
      when "http://api.dribbble.com/shots/shots/popular"
        
        
      
      else
        raise StandardError.new("TEST: Failed to find a matching URL.")
      end
    end
    alias_method :get, :fake_get

  end
end