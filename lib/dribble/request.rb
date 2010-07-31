module Dribble
  class Request
    class << self
      DRIBBLE_API = 'api.dribbble.com'
      
      def get(query, options={})
        meth    = options.delete(:api_endpoint)
        uri     = options.empty? ? "#{to_url}#{query}" : "#{to_url}#{query}?#{options.to_query}"
        url     = ::URI.parse(uri)
        results = ::Yajl::HttpStream.get(url, :symbolize_keys => true)
        results[:api_endpoint] = meth if meth
        results
      end
      
      
      private
        
        def to_url
          "http://#{DRIBBLE_API}"
        end

    end
  end
end