class SpaceAge
  EARTH_YEAR_IN_SECONDS = 31_557_600
  YEAR_FACTORS = {
    earth:     1.0,
    mercury:   0.2408467,
    venus:     0.61519726,
    mars:      1.8808158 ,
    jupiter:  11.862615, 
    saturn:   29.447498, 
    uranus:   84.016846, 
    neptune: 164.79132
  }

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
  end

  YEAR_FACTORS.each do |planet, factor|
    define_method("on_#{planet.to_s}") do
      @age_in_seconds / (EARTH_YEAR_IN_SECONDS * factor)
    end
  end
end
