class Transpose
  def self.transpose(input)
    return input if input.empty?
    
    rows = input.split("\n")
    size = rows.map(&:length).max
    rows.map! { |row| row.ljust(size).chars }
    
    columns = Array.new(size)
    
    rows.each do |row|
      row.each_with_index do |value, i|
        (columns[i] ||= []) << value
      end
    end
    
    # This is just to remove the stupid whitespaces so the test will pass
    columns.each_with_index do |column, i|
      column.each_with_index do |value, j|
        cols = []
        columns[i..-1].each do |col|
          cols << col[j]
        end
        if column[j..-1].all? { |v| v == " " } && cols.all? { |v| v == " " }
          column[j] = ""
        end
      end
    end
    
    columns.map!(&:join).join("\n")
  end
end
