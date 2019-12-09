class ArmstrongNumbers
  def self.include?(num)
    digits = num.digits
    power = digits.count

    num == digits.sum { |digit| digit ** power }
  end
end
