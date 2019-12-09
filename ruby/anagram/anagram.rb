class Anagram
  def initialize(word)
    @word = word.downcase
    @characters = @word.chars.sort
  end

  def match(words)
    words.select { |word| word if @word != word.downcase && @characters == word.downcase.chars.sort }
  end
end
