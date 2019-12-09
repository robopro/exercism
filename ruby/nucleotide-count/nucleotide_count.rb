class Nucleotide

  def initialize(strand)
    validate(strand)
    @strand = strand
  end

  def count(nucleotide)
    @strand.count(nucleotide)
  end

  def histogram
    counts = { 'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0 }
    @strand.chars.each_with_object(counts) { |nucleotide, counts| counts[nucleotide] += 1 } 
  end

  def self.from_dna(strand)
    new(strand)
    # Nucleotide.new(strand)
  end

  private

  def validate(strand)
    if strand.match(/[^ACGT]+/)
      raise ArgumentError.new("Not a valid DNA strand")
    end
  end
end
