class Triplet
  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def sum
    a + b + c
  end

  def product
    a * b * c
  end

  def pythagorean?
    a < b && b < c && a ** 2 + b ** 2 == c ** 2
  end

  def self.where(sum: nil, min_factor: 1, max_factor:)
    min_factor.upto(max_factor).to_a.combination(3).each_with_object(Array.new) do |abc, results|
      triplet = new(abc[0], abc[1], abc[2])
      results << triplet if triplet.pythagorean? && (triplet.sum == sum || !sum)
    end
  end

  private

  attr_reader :a, :b, :c

end
