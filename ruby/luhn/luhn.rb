class Luhn
  def self.valid?(number)
    num = number.delete(' ')

    return false if num.length < 2 || num =~ /\D/

    num
      .reverse
      .chars
      .map(&:to_i)
      .each_slice(2)
      .sum { |first, second = 0| first + luhn_double(second) }
      .modulo(10)
      .zero?
  end

  private_class_method def self.luhn_double(digit)
    digit * 2 < 10 ? digit * 2 : digit * 2 - 9
  end
end
