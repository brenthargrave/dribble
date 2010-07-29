class Hash

  ##
  # To query
  #
  # @param  [String]
  # @return [String]
  # @api    Public
  #
  def to_query(namespace = nil)
    collect do |key, value|
      value.to_query(namespace ? "#{namespace}[#{key}]" : key)
    end.sort * '&'
  end
  
  
  ##
  # Symbolize Keys
  #
  # @return [Hash]
  # @api    Public
  #
  def symbolize_keys
    inject({}) do |options, (key, value)|
      options[(key.to_sym rescue key) || key] = value
      options
    end
  end
  
  
  ##
  # Symbolize Keys!
  #
  # @return [Hash]
  # @api    Public
  #
  def symbolize_keys!
    self.replace(self.symbolize_keys)
  end
  
  
  ##
  # Recursively Symbolize Keys!
  #
  # @return [Hash]
  # @api    Public
  #
  def recursive_symbolize_keys!
    symbolize_keys!
    values.each{|h| h.recursive_symbolize_keys! if h.is_a?(Hash) }
    values.select{|v| v.is_a?(Array) }.flatten.each{|h| h.recursive_symbolize_keys! if h.is_a?(Hash) }
    self
  end
  
end