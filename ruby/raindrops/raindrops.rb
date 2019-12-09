class Raindrops
  SOUNDS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }.freeze

  def self.convert(num)
    rain_speak = SOUNDS.each_with_object("") do |(factor, sound), string| 
      string << sound if (num % factor).zero?
    end
    rain_speak.empty? ? num.to_s : rain_speak
  end
end
