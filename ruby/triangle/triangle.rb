class Triangle
  attr_reader :triangle

  def initialize(triangle)
    @triangle = triangle
  end

  def equilateral?
    triangle? && n_uniques?(1)
  end
  
  def isosceles?
    triangle? && n_or_fewer_uniques?(2)
  end
  
  def scalene?
    triangle? && n_uniques?(3)
  end
  
  private
  
  def n_uniques?(n)
    triangle.uniq.size == n
  end
  
  def n_or_fewer_uniques?(n)
    triangle.uniq.size <= n
  end

  def triangle?
    triangle.min > 0 && triangle.min(2).sum >= triangle.max
  end
end
