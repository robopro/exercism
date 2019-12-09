require 'byebug'

class Scrabble
  POINTS_TABLE = [
    ["aeioulnrst",  1],
    ["dg",          2],
    ["bcmp",        3],
    ["fhvwy",       4],
    ["k",           5],
    ["jx",          8],
    ["qz",          10]
  ].freeze

  def initialize(word)
    @word = word || ""
  end

  def score
    @word.downcase!

    POINTS_TABLE.sum do |letter_value|
      @word.count(letter_value.first) * letter_value.last
    end
  end

  def self.score(word)
    new(word).score
  end
end
