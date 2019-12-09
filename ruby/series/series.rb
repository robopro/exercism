class Series
  def initialize(series)
    @series = series
  end

  def slices(num_in_slice)
    arr = @series.each_char.each_cons(num_in_slice).map { |x| x.join }
    arr.empty? ? (raise ArgumentError.new("Nuh!")) : arr
  end
end
