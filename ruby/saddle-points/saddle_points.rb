class Matrix
  
  attr_reader :rows
  
  def initialize(matrix)
    @rows = matrix.split("\n").map { |string| string.split.map(&:to_i) }
  end

  def columns
    rows.transpose
  end

  def saddle_points
    points = []
    
    rows.each_with_index do |row, i|
      max = row.max
      max_index = row.find_index(max)
      points << [i, max_index] if columns[max_index].min == columns[max_index][i]
    end

    points
  end
end
