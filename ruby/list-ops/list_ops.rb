module ListOps
  module_function

  def arrays(arr)
    fold(0, arr) { |acc| acc + 1 }
  end

  def reverser(arr)
    fold([], arr) { |acc, e| acc.unshift(e) }
  end

  def concatter(arr_one, arr_two)
    fold(arr_one, arr_two, &:<<)
  end

  def mapper(arr, &proc)
    fold([], arr) { |acc, e| acc << proc[e] }
  end

  def filterer(arr, &proc)
    fold([], arr) { |acc, e| proc[e] ? acc << e : acc }
  end

  def sum_reducer(arr)
    fold(0, arr) { |acc, e| acc + e }
  end

  def factorial_reducer(arr)
    fold(1, arr) { |acc, e| acc * e }
  end

  def fold(acc, arr, &proc)
    arr.each do |e|
      acc = proc[acc, e]
    end
    acc
  end
end
