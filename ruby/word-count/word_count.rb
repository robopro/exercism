class Phrase
  def initialize(string)
    @words = string.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end
end
