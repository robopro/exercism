class Palindromes
  Palindrome = Struct.new(:value, :factors)

  def initialize(min_factor: 1, max_factor:)
    @min = min_factor
    @max = max_factor
    @palindromes = Hash.new { |hash, key| hash[key] = [] }
  end

  def generate
    (@min..@max).to_a.repeated_combination(2).each do |pair|
      product = pair.reduce(:*)
      @palindromes[product] << pair if palindrome?(product.to_s)
    end
  end

  def largest
    Palindrome.new(*@palindromes.max)
  end
  
  def smallest
    Palindrome.new(*@palindromes.min)
  end

  private

  def palindrome?(num)
    num == num.reverse
  end
end
