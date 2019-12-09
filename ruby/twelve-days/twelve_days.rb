class TwelveDays
  ORDINALS = %w[zeroth first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth]
  GIFTS = [
    'twelve Drummers Drumming, ',
    'eleven Pipers Piping, ',
    'ten Lords-a-Leaping, ',
    'nine Ladies Dancing, ',
    'eight Maids-a-Milking, ',
    'seven Swans-a-Swimming, ',
    'six Geese-a-Laying, ',
    'five Gold Rings, ',
    'four Calling Birds, ',
    'three French Hens, ',
    'two Turtle Doves, and ',
    'a Partridge in a Pear Tree'
  ]

  def song
    (1..GIFTS.length).map { |day| verse(day) }.join("\n")
  end

  private

  def verse(day)
    "#{first_part(day)} #{second_part(day)}.\n"
  end

  def first_part(day)
    "On the #{ORDINALS[day]} day of Christmas my true love gave to me:"
  end

  def second_part(day)
    GIFTS.last(day).join
  end

  def self.song
    TwelveDays.new.song
  end
end
