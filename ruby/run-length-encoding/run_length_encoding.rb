class RunLengthEncoding
  def self.encode(string)
    string.gsub(/(.)\1+/) { "#{$&.length}#{$1}" }
  end

  def self.decode(string)
    string.gsub(/(\d+)(.)/) { $2 * $1.to_i }
  end
end
