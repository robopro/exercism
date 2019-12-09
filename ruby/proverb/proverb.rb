class Proverb
  def initialize(*words, qualifier: nil)
    @words = words
    @qualifier = qualifier
  end

  def to_s
    output = @words[0...-1].each_with_object("").with_index do |(word, string), i|
      string << "For want of a #{word} the #{@words[i + 1]} was lost.\n"
    end
    output << "And all for the want of a #{@qualifier} #{@words.first}.".squeeze(" ")
  end
end
