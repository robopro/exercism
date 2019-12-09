class Acronym
  def self.abbreviate(string)
    string.scan(/(\A\p{Alpha}|(?<=\W)\p{Alpha})/).join.upcase
  end
end
