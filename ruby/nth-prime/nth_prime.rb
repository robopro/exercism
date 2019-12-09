class Prime
  def self.nth(n)
    raise ArgumentError.new("Must be larger than 0") if n <= 0
    
    prime = 2
    i = 0
    
    until i == n
      if is_prime?(prime)
        i += 1
        return prime if i == n
      end
      prime += 1
    end
  end

  def self.is_prime?(num)
    return false if num <= 1
    (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
  end
end
