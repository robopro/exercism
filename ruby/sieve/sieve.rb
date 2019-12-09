class Sieve
  def initialize(limit)
    @limit = limit
    @range = (2..@limit).inject({}) { |h, n| h[n] = nil; h }
  end

  def primes
    @range.each do |n, marked|
      if marked.nil?
        i = n
        product = n * i
        while product <= @limit
          @range[product] = "x"
          i += 1
          product = n * i
        end
      end
    end
    @range.map { |k, v| k if v.nil? }.compact
  end
end
