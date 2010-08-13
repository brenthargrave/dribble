module Dribble
  class Request
    class << self
      DRIBBLE_API = 'api.dribbble.com'
      
      
      ##
      # Get
      #
      # @param  [String, Hash]
      # @return [Array/Hash]
      # @api    private
      #
      def get(query, options={})
        meth = options.delete(:api_endpoint)
        ::EventMachine.run do
          http = ::EventMachine::HttpRequest.new("#{to_url}#{query}").get(:query => options, :timeout => 10)
          http.callback do
            @response = {
              :status => http.response_header.status,
              :header => http.response_header,
              :body   => http.response,
              :data   => ::Yajl::Parser.new(:symbolize_keys => true).parse(http.response)
            }
            ::EventMachine.stop
          end
        end
        @response[:data][:api_endpoint] = meth if meth
        @response[:data]
      end    
      
      
      private
        
        def to_url
          "http://#{DRIBBLE_API}"
        end

    end
  end
end