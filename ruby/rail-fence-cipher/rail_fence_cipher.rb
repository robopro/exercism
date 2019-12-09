require 'byebug'

class RailFenceCipher
  def self.encode(message, rails)
    return message if message.empty? || rails == 1

    matrix(message, rails).join
  end

  def self.decode(message, rails)
    return message if message.empty? || rails == 1

    mat = matrix("*"*message.size, rails)

    i = 0

    mat.each do |row|
      row.each_with_index do |col, j|
        unless col.nil? || i > message.size - 1
          row[j] = message[i]
          i += 1
        end
      end
    end

    row = 0
    col = 0
    down = false
    decoded = ""

    message.size.times do
      decoded << mat[row][col]

      down = !down if row == rails - 1 || row == 0
      down ? row += 1 : row -= 1
      col += 1
    end

    return decoded
  end

  def self.matrix(message, rails)
    matrix = Array.new(rails).map { Array.new(message.size) }

    row = 0
    col = 0
    down = false

    message.chars.each do |char|
      matrix[row][col] = char

      down = !down if row == rails - 1 || row == 0
      down ? row += 1 : row -= 1
      col += 1
    end

    return matrix
  end
end
