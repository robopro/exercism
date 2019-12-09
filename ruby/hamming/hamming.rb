class Hamming
  def self.compute(first_strand, second_strand)
    if first_strand.length != second_strand.length
      raise ArgumentError.new("Strands must be equal length")
    end

    first_strand.chars.zip(second_strand.chars).count { |first_char, second_char| first_char != second_char }
  end
end

