class Grains
    def self.square(square)
        2 ** (square - 1)
    end

    def self.total
        (1..64).reduce { |sum, i| sum + self.square(i) }
    end
end
