require 'byebug'

class Integer
  ROMAN_NUMERALS = {
    "M"   => 1000,
    "CM"  => 900,
    "D"   => 500,
    "CD"  => 400,
    "C"   => 100,
    "XC"  => 90,
    "L"   => 50,
    "XL"  => 40,
    "X"   => 10,
    "IX"  => 9,
    "V"   => 5,
    "IV"  => 4,
    "I"   => 1
  }.freeze

  def to_roman
    return "NaN" if self <= 0

    arabic = self

    ROMAN_NUMERALS.each_with_object("") do |(key, value), string|
      string << key * (arabic / value)
      arabic %= value
    end
  end
end
