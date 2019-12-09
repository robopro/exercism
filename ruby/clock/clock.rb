class Clock
  HOURS_PER_DAY = 24
  MINUTES_PER_HOUR = 60
  MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

  def initialize(hour: 0, minute: 0)
    @minute = (minute + hour * MINUTES_PER_HOUR) % MINUTES_PER_DAY
  end

  def +(other)
    self.class.new(minute: minute + other.minute)
  end

  def -(other)
    self.class.new(minute: minute - other.minute)
  end

  def ==(other)
    minute == other.minute
  end

  def to_s
    format("%02d:%02d", *minute.divmod(60))
  end

  protected

  attr_reader :minute
end
