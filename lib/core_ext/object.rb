class Object
  def blank?
    if respond_to?(:empty?)
      nil? || empty?
    else
      nil?
    end
  end
  
  
  def to_query(key)
    require 'cgi' unless defined?(CGI) && defined?(CGI::escape)
    "#{CGI.escape(key.to_s)}=#{CGI.escape(to_param.to_s)}"
  end
  
  def to_param
    to_s
  end
end