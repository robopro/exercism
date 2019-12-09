class PrimeFactors
  def self.of(num)
    factors = []
    divisor = 2

    until num == 1
      if (num % divisor).zero?
        factors << divisor
        num /= divisor
      else
        divisor += divisor < 3 ? 1 : 2
      end
    end

    factors
  end
end
