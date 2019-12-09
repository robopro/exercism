class SumOfMultiples 
  def initialize(*args)
    @factors = args.reject { |x| x == 0 }
  end

  def to(n)
    @factors.flat_map do |factor|
      [*(factor...n).step(factor)]
    end.uniq.sum
  end
end
