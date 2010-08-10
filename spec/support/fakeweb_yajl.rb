module Yajl
  class HttpStream
    class << self
      
      def fake_get(uri, opts={}, &block)
        yajl = ::Yajl::Parser.new(:symbolize_keys => true)
        case uri.to_s
        when condition
        else
          raise HttpError.new("TEST: Unknown uri: #{uri.to_s}")
        end
      end
      alias_method :get, :fake_get
      
    end
  end
end