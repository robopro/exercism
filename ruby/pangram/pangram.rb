class Pangram
  def self.pangram?(string)
    ('a'..'z').all? { |char| string.downcase.include?(char) }  
  end
end
