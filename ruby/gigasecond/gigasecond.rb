class Gigasecond
  @time_to_add = 1_000_000_000

  def self.from(start_date)
    start_date + @time_to_add
  end
end
