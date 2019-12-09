class BaseConverter
  def self.convert(input_base, digits, output_base)
    validate!(input_base, digits, output_base)

    decimal = digits.inject(0) { |n, digit| n * input_base + digit }
    result = decimal.zero? ? [0] : []

    until decimal.zero?
      result << decimal % output_base
      decimal /= output_base
    end
    result.reverse
  end

  private_class_method def self.validate!(input_base, digits, output_base)
    raise ArgumentError if input_base < 2 || output_base < 2
    raise ArgumentError if digits.any? { |digit| digit < 0 || digit >= input_base }
  end
end
