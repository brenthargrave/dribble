module Dribble
  class Request
    class << self
      
      DRIBBLE_API = 'api.dribbble.com'
      TIMEOUT     = 10
      
      def get(query, options={})
        uri = options.empty? ? "#{to_url}#{query}" : "#{to_url}#{query}?#{options.to_query}"
        url = ::URI.parse(uri)
        ::Yajl::HttpStream.get(url, :symbolize_keys => true)
      end
      
      
      private
        
        def to_url
          "http://#{DRIBBLE_API}"
        end

    end
  end
end