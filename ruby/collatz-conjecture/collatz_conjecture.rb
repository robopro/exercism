class CollatzConjecture
  def self.steps(num, steps = 0)
    raise ArgumentError.new("Can't divide zero! No, wait . . .") if num < 1
    return steps if num == 1
    num.even? ?  steps(num / 2, steps + 1) : steps((3 * num) + 1, steps + 1)
  end
end
