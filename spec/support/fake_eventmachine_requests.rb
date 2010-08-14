def fakeweb(filename)
  File.read(File.join(File.dirname(__FILE__), '..', 'fake_data', filename))
end

module EventMachine
  class HttpRequest
    attr_accessor :response
    
    def fake_send_request(&blk)
      case @req.uri.to_s
        
        
      when "http://api.dribbble.com:80/players/simplebits/shots"
        response = fakeweb('player/player_find_shots.json')
      when "http://api.dribbble.com/players/simplebits/shots/following"
        response = fakeweb('player/player_following_shots.json')
      when "http://api.dribbble.com/players/players/simplebits"
        response = fakeweb('player/player_profile.json')
      when "http://api.dribbble.com/players/players/simplebits/followers"
        response = fakeweb('player/player_followers.json')
      when "http://api.dribbble.com/players/players/simplebits/draftees"
        response = fakeweb('player/player_draftees.json')
      
      
      when "http://api.dribbble.com/shots/shots/1"
        response = fakeweb('shot/shot_for.json')
      when "http://api.dribbble.com/shots/shots/everyone"
        response = fakeweb('shot/shot_everyones.json')
      when "http://api.dribbble.com/shots/shots/debuts"
        response = fakeweb('shot/shot_debuts.json')
      when "http://api.dribbble.com/shots/shots/popular"
        response = fakeweb('shot/shot_popular.json')
        
      
      else
        raise StandardError.new("TEST: Failed to find a matching URL for: #{@req.uri}")
      end
    end
    alias_method :send_request, :fake_send_request

    
  end
end