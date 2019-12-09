module Strain
  def keep
    each_with_object([]) { |element, result| result << element if yield(element) }
  end
  
  def discard
    keep { |element| !yield(element) }
  end
end

Array.include(Strain)
